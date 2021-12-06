from django.shortcuts import render, redirect
from django.http import HttpResponse
import json
from django.core import serializers
from django.core.paginator import Paginator
from django.core.exceptions import ObjectDoesNotExist
from django.core.mail import send_mail
from django.template import loader, RequestContext
from django.contrib.auth import logout as sellerlogout
from django.contrib.auth.models import User, Group
from .models import (
		Categorie,
		Contact,
		Countrie,
		CurrencyConversationRate,
		Customer,
		CustomerAddres,
		CustomerOrder,
		CustomerReview,
		CustomerWishList,
		HomeBanner,
		OrderItem,
		OrderStatus,
		Product,
		ProductImage,
		ProductPrice,
		State
	)
from django.db.models import Q
from django.contrib import messages
import hashlib
from datetime import datetime, date, timedelta


# Create your views here.



def getCategories(slug = None, parent_id = None, category_id = None):
	if slug is not None:
		categories = Categorie.objects.get(slug=slug)
	elif category_id is not None:
		categories = Categorie.objects.get(category_id=category_id)
	elif parent_id is not None:
		categories = Categorie.objects.filter(parent_id=parent_id).order_by('title')
	else:
		categories = Categorie.objects.order_by('title')

	return categories

def getProducts(request='', start=0, limit=0, featured=False, top_selling_product = False, category_id = 0, product_id = 0, slug = "", id_in_bulk = None, getById = False):
	if featured:
		products = Product.objects.filter(featured_product=True).order_by('?')[:4]
	elif category_id > 0:
		products = Product.objects.filter(category_id=category_id).filter(~Q(product_id = product_id)).order_by('product_name')[:4]
	elif top_selling_product:
		products = Product.objects.all().order_by('-no_of_sold_product')[:4]
	elif id_in_bulk is not None:
		products = Product.objects.filter(category_id__in = id_in_bulk).order_by('-no_of_sold_product')
	elif slug:
		products = Product.objects.get(slug=slug)
	elif product_id > 0 and getById == True:
		products = Product.objects.get(product_id=product_id)
	else:
		if limit > 0:
			products = Product.objects.all().order_by('-created_at')[start:limit]
		else:
			products = Product.objects.all()
	if slug == "" and getById == False:
		for i in range(len(products)):
			prod_id = products[i].product_id
			get_prod_price = getProductPrice(request, prod_id)
			old_price = get_prod_price.get('old_price')
			price = get_prod_price.get('price')
			prod_img = ProductImage.objects.filter(product_id=prod_id).first()
			if prod_img:
				setattr(products[i], 'image', prod_img.product_image)
			if price is not None:
				setattr(products[i], 'price', price)
			if old_price is not None:
				setattr(products[i], 'old_price', old_price)
			currency_symbol = getCurrrencySymbol(request)
			setattr(products[i], 'currency_symbol', currency_symbol)
	else:
		get_prod_price = getProductPrice(request, products.product_id)
		old_price = get_prod_price.get('old_price')
		price = get_prod_price.get('price')
		if price is not None:
			setattr(products, 'price', price)
		if old_price is not None:
			setattr(products, 'old_price', old_price)
		currency_symbol = getCurrrencySymbol(request)
		setattr(products, 'currency_symbol', currency_symbol)
		if product_id > 0:
			prod_img = ProductImage.objects.filter(product_id=product_id).first()
			if prod_img:
				setattr(products, 'image', prod_img.product_image)

	return products

def getProductPrice(request, product_id):
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	product_currency = ProductPrice.objects.filter(product_id = product_id, price_currency_code =store_currency).first()
	product_INR_price = ProductPrice.objects.filter(product_id = product_id, price_currency_code ="INR").first()
	currecy_rate = CurrencyConversationRate.objects.filter(currency_code_to = store_currency).first()
	params = {}
	old_price = 0
	new_price = 0
	if product_currency == None:
		old_price = round(product_INR_price.old_price * currecy_rate.rate, 2)
		new_price = round(product_INR_price.price * currecy_rate.rate, 2)
		p_price = ProductPrice(
			product_id = product_id,
			old_price = old_price,
			price = new_price,
			price_currency_code = store_currency,
			old_currency_rate = currecy_rate.rate
		)
		p_price.save()
	else:
		currency_old_rate = product_currency.old_currency_rate
		if currency_old_rate == currecy_rate.rate:
			old_price = product_currency.old_price
			new_price = product_currency.price
		else:
			old_price = round(product_INR_price.old_price * currecy_rate.rate, 2)
			new_price = round(product_INR_price.price * currecy_rate.rate, 2)
			ProductPrice.objects.filter(
				product_id = product_id,
				price_currency_code = store_currency
			).update(
				old_price = old_price,
				price = new_price,
				price_currency_code = store_currency,
				old_currency_rate = currecy_rate.rate,
				updated_at = datetime.now()
			)

	params['old_price'] = old_price
	params['price'] = new_price
	params['pId'] = product_id

	return params

def getCurrrencySymbol(request, custome_currency = None):
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = None
	if custome_currency is not None:
		store_currency = custome_currency
	currency = "₹"
	if store_currency == "USD" or store_currency == "AUD":
		currency = "$"

	if store_currency == "GBP":
		currency = "£"

	if store_currency == "EUR":
		currency = "€"
	return currency


def logged_in_user_profile(request):
	user_id = ''
	if 'id' in request.session:
		user_id = request.session['id']
	if user_id:
		current_user = Customer.objects.get(customer_id = user_id)
		return current_user
	else:
		return False


def index(request):
	request.session['breadcrumbs'] = []
	current_user = logged_in_user_profile(request)
	banners = HomeBanner.objects.all()
	categories = getCategories()
	fetured_product = getProducts(request=request, featured=True)
	latest_product = getProducts(request=request, limit=4)
	no_of_banner = len(banners)
	slider_range = range(1, no_of_banner)
	top_selling_product = getProducts(request=request, top_selling_product=True)
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency              
	params["banners"] = banners               
	params["categories"] = categories
	params["fetured_product"] = fetured_product
	params["latest_product"] = latest_product
	params["slider_range"] = slider_range                               
	params["top_selling_product"] = top_selling_product
	params["current_user"] = current_user
	return render(request, "shop/index.html", params);

def about(request):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	return render(request, "shop/about.html", params);

def cart(request):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	return render(request, "shop/cart.html", params);

def checkout(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	clear_cart = False
	if request.method == "POST":
		cart_data = request.POST.get("cart_data", '')
		cust_id = current_user.customer_id
		address_id = request.POST.get("address", '')
		pm = request.POST.get("paymentMethod", '')
		tam = request.POST.get("cart_total_amout", '')
		pga = request.POST.get("cart_gst_amout", '')
		ppa = request.POST.get("cart_grand_total_amout", '')
		sc = request.POST.get("shipping_cahrge", '')
		currency = getCurrrencySymbol(request)
		date_1 = date.today()
		expected_date = date_1 + timedelta(days=10)
		order = CustomerOrder(
			customer_id = cust_id,
			address_id = address_id,
			payment_method = pm,
			product_total =tam,
			product_gst_amount =pga,
			product_payable_amount =ppa,
			shipping_charge =sc,
			product_currency = currency,
			payment_status="UNPAID",
			expected_date=expected_date
		)
		instance = order.save()
		order_id = order.order_id
		prodItem = []
		prodPrice = []
		for cd in json.loads(cart_data):
			product_id = cd.get("product_id")
			qty = cd.get("product_quantity")
			product_price = getProductPrice(request, product_id)
			product_details = getProducts(request=request, product_id = product_id, getById = True)
			prodItem.append(product_details)
			prodPrice.append(product_price)
			totel_pr = int(product_price.get('price')) * int(qty)
			product_price['price'] = totel_pr
			sold_prod = int(product_details.no_of_sold_product) + int(qty)
			qty_prod = int(product_details.quantity) - int(qty)
			Product.objects.filter(
				product_id=product_id
			).update(
				quantity = qty_prod,
				no_of_sold_product = sold_prod
			)
			product = OrderItem(
				order_id = order_id,
				product_id = product_id,
				quantity = qty,
				product_price = int(product_price.get('price')) * int(qty)
			)
			product.save()
		status = OrderStatus(
			order_id = order_id,
			order_status = "ORD",
			description = "Your order has been placed."
		)
		status.save()
		address = CustomerAddres.objects.filter(address_id=address_id).first()
		param = {
			"address": address,
			"order_id": order_id,
			"expected_date": expected_date,
			"Items": prodItem,
			"order_currency":currency,
			"amount":tam,
			"gst":pga,
			"shipping_charge":sc,
			"prodPrice":prodPrice,
			"total_amount":ppa,
			"cart_data":json.loads(cart_data)
		}
		html_message = loader.render_to_string('shop/email/order.html',param)
		subject ="Your Deal With Us Order No:- "+str(order_id)
		from_email = "wtit786@gmail.com"
		email = current_user.email_address
		try:
			send_mail(
				subject,
				'',
				from_email,
				[email, from_email],
				fail_silently=False,
				html_message=html_message
			)
		except Exception as e:
			pass
		clear_cart = True
		messages.success(request, 'Your order placed successfully.')

	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	
	cust_id = request.session['id']
	address = CustomerAddres.objects.filter(customer_id=cust_id).order_by('-created_at')
	params = {}                 
	params["address"] = address
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["clear_cart"] = clear_cart
	params["current_user"] = current_user
	return render(request, "shop/checkout.html", params);

def contact(request):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	form = []
	if request.method == "POST":
		form = request.POST
		name = request.POST.get("txtName", '')
		email = request.POST.get("txtEmail", '')
		phone = request.POST.get("txtPhone", '')
		message = request.POST.get("txtMsg", '')
		exists_contact = Contact.objects.filter(email = email).first()
		if exists_contact == None:
			contact = Contact(name = name, email = email, phone = phone, message=message)
			contact.save()
			messages.success(request, 'Your Information submitted successfully.', extra_tags='success')
			form = []
			param = {
				"name": name,
				"email": email,
				"phone": phone,
				"message": message,
			}
			html_message = loader.render_to_string('shop/email/contact.html',param)
			subject ="Contact Submitted"
			from_email = "wtit786@gmail.com"
			try:
				send_mail(
					subject,
					'',
					from_email,
					[email, from_email],
					fail_silently=False,
					html_message=html_message
				)
			except Exception as e:
				pass
		else:
			messages.error(request, 'Email is already exist.', extra_tags='email_exist')
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["categories"] = categories
	params["current_user"] = current_user
	params["form"] = form
	params["store_currency"] = store_currency
	return render(request, "shop/contact.html", params);

def login(request):
	if logged_in_user_profile(request) is not False:
		return redirect('/')
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	form = [];
	error = 0
	categories = getCategories()
	if request.method == "POST":
		form = request.POST;
		email = request.POST.get('email')
		password = request.POST.get('password')
		if email == "":
			messages.error(request, 'Email should be required.', extra_tags='email')
			error = 1
		if password == "":
			messages.error(request, 'Password should be required.', extra_tags='password')
			error = 1
		if error == 0:
			new_pass = hashlib.md5(bytes(password,"ascii"))
			npass = new_pass.hexdigest()
			get_user = Customer.objects.filter(email_address=email).filter(password=npass)
			if len(get_user) == 0 :
				messages.error(request, 'Invalid email/password.', extra_tags='password')
			else:
				user_info = {};
				for i in get_user:
					request.session['id'] = i.customer_id
					request.session['name'] = i.first_name
				return redirect('/')

	params["form"] = form
	params["categories"] = categories
	return render(request, "shop/login.html", params);

def product_view(request, slug):
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	
	if request.method == "POST":
		order_id = int(request.POST.get('order_id'))
	else:
		try:
			order_id = int(request.session['old_order_id'])
			request.session['old_order_id'] = 0
		except:
			order_id = 0
	params = {}                 
	params["store_currency"] = store_currency
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	product = getProducts(request=request, slug=slug)
	prod_cat_info = getCategories(category_id=product.category_id)
	breadcrumbs = []
	if prod_cat_info.parent_id is not None:
		breadcrumbs = get_breadcrumbs(prod_cat_info.parent_id, breadcrumbs)
	product_image = ProductImage.objects.filter(product_id=product.product_id)
	product_reviews = CustomerReview.objects.filter(product_id=product.product_id, status = True).order_by('-updated_at')
	product_average_rating = getProdAvgRating(product_reviews) 
	product_rating_percentage = getProdPerRating(product_reviews)
	if current_user == False :
		in_wishlist = False
	else:
		in_wishlist = CheckProductInWishlist(request=request, product_id = product.product_id)
	params["categories"] = categories
	params["similer_products"] = getProducts(request=request, category_id=product.category_id, product_id = product.product_id)
	params["similer_products"] = getProducts(request=request, category_id=product.category_id, product_id = product.product_id)
	params["in_wishlist"] = in_wishlist
	params["product"] = product
	params["product_image"] = product_image
	params["reviews"] = product_reviews
	params["avgRating"] = product_average_rating
	params["review_range"] = range(1, 6)
	params["rating_percentage"] = product_rating_percentage
	params["current_user"] = current_user
	params["breadcrumbs"] = breadcrumbs
	params["order_id"] = order_id
	params["prod_cat_info"] = prod_cat_info
	return render(request, "shop/product-details.html", params);

def register(request):
	current_user = logged_in_user_profile(request)
	if current_user is not False:
		return redirect('/')
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	categories = getCategories()
	params["current_user"] = current_user
	params["categories"] = categories
	return render(request, "shop/register.html", params);

def change_password(request):
	current_user = logged_in_user_profile(request)
	if current_user is False:
		return redirect('/')
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	form = []
	if request.method == "POST":
		form = request.POST;
		password = request.POST.get('password')
		new_password = request.POST.get('new_password')
		user_id = request.session['id']
		cust_old_pasword = Customer.objects.get(customer_id = user_id)
		db_password = cust_old_pasword.password
		md5_hashed_input_password = hashlib.md5(bytes(password,"ascii"))
		final_old_pass = md5_hashed_input_password.hexdigest()
		if final_old_pass == db_password:
			new_password = hashlib.md5(bytes(new_password,"ascii"))
			incripted_pass = new_password.hexdigest()
			Customer.objects.filter(
					customer_id = user_id
				).update(
					password = incripted_pass,
					updated_at = datetime.now()
				)
			messages.success(request, 'Password changed successfully.')
			return redirect('/dashboard')
		else:
			messages.error(request, 'Wrong Old Password. Please try again with right password.')

	categories = getCategories()
	params["form"] = form
	params["current_user"] = current_user
	params["categories"] = categories
	return render(request, "shop/myaccount/change_password.html", params);

def register_user(request):
	if request.method == "POST":
		try:
			store_currency = request.session['store_currency']
		except:
			store_currency = "INR"
		params = {}                 
		params["store_currency"] = store_currency
		error = 0;
		form = request.POST;
		categories = getCategories()
		params["categories"] = categories
		name = request.POST.get('name', '')
		email = request.POST.get('email', '')
		password = request.POST.get('password', '')
		conf_password = request.POST.get('password_confirm', '')
		md5_hashed_input_password = hashlib.md5(bytes(password,"ascii"))
		check_exist = Customer.objects.filter(email_address=email)
		
		if name == "":
			messages.error(request, 'Name should be required.', extra_tags='name')
			error = 1
		if email == "":
			messages.error(request, 'Email should be required.', extra_tags='email')
			error = 1
		else:	
			if len(check_exist) == 1 :
				messages.error(request, 'Email already exist.', extra_tags='email')
				error = 1
		if password == "":
			messages.error(request, 'Password should be required.', extra_tags='password')
			error = 1
		if conf_password == "":
			messages.error(request, 'Confirm Password should be required.', extra_tags='pass-confirm')
			error = 1
		if conf_password != password:
			messages.error(request, 'Confirm Password should be match with password.', extra_tags='pass-confirm')
			error = 1
		if(error == 0):
			new_pass = md5_hashed_input_password.hexdigest()
			cust = Customer(
				first_name = name,
				email_address = email,
				username = email,
				password = new_pass
			)
			cust.save()
			messages.success(request, 'User registerd successfully.', extra_tags='success')
			form = []

		params["form"] = form
		return render(request, "shop/register.html",
			params)
	else:
		return HttpResponse('''Method not allow. go to <a href="/register">Back</a>''');


def searchMatch(query, item):
	if query in item.product_name.lower() or query in item.category.title.lower() or query in item.description.lower() or query in item.search_tag.lower() or	query in item.product_details.lower():
		return True
	return False


def search(request):
	query = request.GET.get('query')
	if query is not None:
		if len(query) > 2 :
			products = getProducts(request=request)
			products = [ item for item in products if searchMatch(query, item)]
			current_user = logged_in_user_profile(request)
			categories = getCategories()
			related_categories = []
			try:
				store_currency = request.session['store_currency']
			except:
				store_currency = "INR"

			paginator = Paginator(products, 12)
			page_number = 1
			if request.GET.get('page'):
				page_number = request.GET.get('page')
			product_obj = paginator.get_page(page_number)
			product_count = len(products) + 1
			breadcrumbs = []
			params = {}                 
			params["query"] = query
			params["store_currency"] = store_currency
			params["categories"] = categories
			params["related_categories"] = related_categories
			params["category"] = []
			params["page_title"] = "Search Page"
			params["products"] = product_obj
			params["page_range"] = paginator.page_range
			params["current_user"] = current_user
			params["breadcrumbs"] = breadcrumbs
			return render(request, "shop/produts.html", params);
		else:
			return HttpResponse("<h1>Search string should be greater then or equal to 3 charachters.</h1>")
	else:
		return HttpResponse("<h1>You have to send search query for serching product.</h1>");

def logout(request):
	try:
		del request.session['id']
		del request.session['name']
	except:
		pass
	return redirect("/")

def review(request):
	if logged_in_user_profile(request) == False:
		return redirect('/login')
	if request.method == "POST":
		error = 0
		product_id = request.POST.get('product_id')
		order_id = request.POST.get('order_id')
		slug = request.POST.get('product_slug')
		rating = request.POST.get('rating')
		review = request.POST.get('review')
		cust_id = request.session['id']
		request.session['old_order_id'] = order_id
		check_exist = CustomerReview.objects.filter(customer_id = cust_id).filter(product_id =
product_id).filter(order_id =
order_id)
		if rating == "" or review =="":
			messages.error(request, 'All fields are required.', extra_tags='review_rating')
			error = 1

		if error == 0:
			if len(check_exist) == 1 :
				CustomerReview.objects.filter(
					customer_id = cust_id
				).filter(
					product_id = product_id
				).filter(
					order_id = order_id
				).update(
					rating = rating,
					review = review,
					updated_at = datetime.now()
				)
			else:
				cust_review = CustomerReview(
					customer_id = cust_id,
					product_id = product_id, 
					order_id = order_id, 
					rating = rating,
					review = review
				)
				cust_review.save()

			messages.success(request, 'Review submitted successfully. \n Thankyou for your feedback.\n Your review will be show after our approval', extra_tags='success')
			return redirect('/product-details/'+slug)
		else:
			return redirect('/product-details/'+slug)

	else:
		return HttpResponse('''Method not allow. go to <a href="/">Home</a>''');

def getProdAvgRating(reviews):
	totel_review_count = len(reviews)
	if totel_review_count > 0:
		totel_rating = 0
		for r in reviews:
			totel_rating = totel_rating + r.rating
		avg_rating = totel_rating/totel_review_count
		final_avg_rating = round(avg_rating,1)
		return final_avg_rating
	else:
		return 0

def getProdPerRating(reviews):
	totel_customer = len(reviews)
	res = {}
	result = {}
	for i in range(5, 0, -1) :
		res[i] = 0
		for r in reviews:
			if i == r.rating :
				res[i] = res[i] + 1
			result[i] = round(res[i]/totel_customer*100)

	return  result

def dashboard(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	if request.method == "POST":
		fname = request.POST.get('fname')
		lname = request.POST.get('lname')
		email = request.POST.get('email')
		gender = request.POST.get('gender')
		phone = request.POST.get('mobile_no')
		cust_id = request.session['id']
		Customer.objects.filter(
					customer_id = cust_id
				).update(
					first_name = fname,
					last_name = lname,
					gender = gender,
					email_address = email,
					mobile_no = phone,
					updated_at = datetime.now()
				)
		messages.success(request, 'Profile updated successfully!')
		current_user = logged_in_user_profile(request)
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	categories = getCategories()
	params["categories"] = categories
	params["current_user"] = current_user
	return render(request, "shop/myaccount/dashboard.html", params);

def myaddress(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	cust_id = request.session['id']
	if request.method == "POST":
		address_id = int(request.POST.get('address_id'))
		name = request.POST.get('name')
		mobile = request.POST.get('mobile')
		alt_mob = request.POST.get('alt_mobile')
		pincode = request.POST.get('pincode')
		address = request.POST.get('address')
		country = request.POST.get('country')
		state = request.POST.get('state')
		city = request.POST.get('city')
		add_type = request.POST.get('address_type')
		landmark = request.POST.get('landmark')
		cust_id = request.session['id']
		if address_id > 0:
			cust_address = CustomerAddres.objects.filter(
					address_id = address_id
				).update(
						name = name,
						mobile = mobile,
						alternative_mobile = alt_mob,
						pincode = pincode,
						address = address,
						city = city,
						state_id = state,
						country_id = country,
						landmark = landmark,
						address_type = add_type
					)
			messages.success(request, 'Address Updated successfully!')
		else:
			cust_address = CustomerAddres(
						customer_id = cust_id,
						name = name,
						mobile = mobile,
						alternative_mobile = alt_mob,
						pincode = pincode,
						address = address,
						city = city,
						state_id = state,
						country_id = country,
						landmark = landmark,
						address_type = add_type
					)
			cust_address.save()
			messages.success(request, 'Address Added successfully!')

	address = CustomerAddres.objects.filter(customer_id=cust_id).order_by('-created_at')
	countries = Countrie.objects.all()
	states = State.objects.filter(country_id = "101")
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	categories = getCategories()
	params["categories"] = categories
	params["current_user"] = current_user
	params["address"] = address
	params["address_count"] = len(address)
	params["countries"] = countries
	params["states"] = states
	return render(request, "shop/myaccount/my-address.html", params);

def delete_address(request, address_id):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	CustomerAddres.objects.filter(address_id=address_id).delete()
	messages.success(request, 'Address deleted successfully!')
	return redirect('/my-address')

def mark_default(request, address_id):
	CustomerAddres.objects.update(
		default_address = False
	)
	CustomerAddres.objects.filter(address_id=address_id).update(
		default_address = True
	)
	messages.success(request, 'Address marked default successfully!')
	return redirect('/my-address')

def ajax_states(request, country_id):
	states = State.objects.filter(country_id = country_id)
	serialized_state = serializers.serialize('json', states)
	return HttpResponse(serialized_state)

def ajax_my_adress(request, address_id):
	address = CustomerAddres.objects.filter(address_id=address_id)
	serialized_address = serializers.serialize('json', address)
	return HttpResponse(serialized_address)

def ajax_get_state(request, state_id):
	state = State.objects.filter(id=state_id)
	serialized_state = serializers.serialize('json', state)
	return HttpResponse(serialized_state)

def ajax_get_country(request, country_id):
	country = Countrie.objects.filter(id=country_id)
	serialized_address = serializers.serialize('json', country)
	return HttpResponse(serialized_address)

def myreview(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	user_id = request.session['id']
	cust_reviews = CustomerReview.objects.filter(customer_id = user_id).order_by('-created_at')
	for i in range(len(cust_reviews)):
		product_id = cust_reviews[i].product_id
		product_img = ProductImage.objects.filter(product_id=product_id).first()
		if product_img:
			setattr(cust_reviews[i], 'product_image', product_img.product_image)
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	categories = getCategories()

	paginator = Paginator(cust_reviews, 8)
	page_number = 1
	if request.GET.get('page'):
		page_number = request.GET.get('page')
	review_obj = paginator.get_page(page_number)
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	params["reviews"] = review_obj
	params["review_range"] = range(1, 6)
	params["page_range"] = paginator.page_range
	return render(request, "shop/myaccount/my-reviews.html", params);

def myWishlist(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	user_id = request.session['id']
	cust_wishlist = CustomerWishList.objects.filter(customer_id = user_id).order_by('-created_at')
	for i in range(len(cust_wishlist)):
		product_id = cust_wishlist[i].product_id
		product_img = ProductImage.objects.filter(product_id=product_id).first()
		if product_img:
			setattr(cust_wishlist[i], 'product_image', product_img.product_image)
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	categories = getCategories()

	page_number = 1
	paginator = Paginator(cust_wishlist, 12)
	if request.GET.get('page'):
		page_number = request.GET.get('page')
	wishlist_obj = paginator.get_page(page_number)
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	params["wishlist"] = wishlist_obj
	params["page_range"] = paginator.page_range
	return render(request, "shop/myaccount/my-wishlist.html", params);


def delete_review(request, review_id):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	CustomerReview.objects.filter(Review_id=review_id).delete()
	messages.success(request, 'Review deleted successfully!')
	return redirect('/my-reviews')

def change_currency(request, currency_code):
	request.session['store_currency'] = currency_code
	return redirect('/')

def category_product(request, slug):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	category = getCategories(slug=slug)
	related_categories = getCategories(parent_id = category.category_id)
	cat_id_array = [category.category_id]

	for cat in related_categories:
		cat_id_array.append(cat.category_id)
		child_cat = getCategories(parent_id = cat.category_id)
		for ch_cat in child_cat:
			cat_id_array.append(ch_cat.category_id)

	
	products = getProducts(request=request, id_in_bulk=cat_id_array)
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	paginator = Paginator(products, 12)
	page_number = 1
	if request.GET.get('page'):
		page_number = request.GET.get('page')
	product_obj = paginator.get_page(page_number)
	product_count = len(products) + 1
	breadcrumbs = []
	if category.parent_id is not None:
		breadcrumbs = get_breadcrumbs(category.parent_id, breadcrumbs)
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["query"] = ''
	params["related_categories"] = related_categories
	params["category"] = category
	params["page_title"] = category.title+"'s Products"
	params["products"] = product_obj
	params["page_range"] = paginator.page_range
	params["current_user"] = current_user
	params["breadcrumbs"] = breadcrumbs
	return render(request, "shop/produts.html", params);

def get_breadcrumbs(parent_id, breadcrumbs):
	category = getCategories(category_id= parent_id)
	if category.title not in breadcrumbs:
		breadcrumbs.append({'label':category.title, 'url': category.slug})
		if category.parent_id is not None:
			return get_breadcrumbs(category.parent_id, breadcrumbs)
	return breadcrumbs

def add_to_wishlist(request, product_id, slug):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	cust_id = request.session['id']
	add_to_wishlist = CustomerWishList( customer_id = cust_id, product_id = product_id)
	add_to_wishlist.save()
	messages.success(request, 'Added in your wishlist successfully.', extra_tags='wishlist_added')
	return redirect('/product-details/'+slug)

def remove_from_wishlist(request, product_id, slug):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	cust_id = request.session['id']
	CustomerWishList.objects.filter(
		customer_id = cust_id
		).filter(
		product_id = product_id
		).delete()
	messages.success(request, 'Removed from your wishlist successfully.', extra_tags='wishlist_added')
	return redirect('/product-details/'+slug)


def CheckProductInWishlist(request, product_id):
	current_user = logged_in_user_profile(request)
	cust_id = current_user.customer_id
	try:
		CustomerWishList.objects.get(customer_id = cust_id, product_id = product_id)
		wishlist = True
	except ObjectDoesNotExist:
		wishlist = False
	return wishlist

def cart_product(request):
	current_user = logged_in_user_profile(request)
	products = request.POST.get('cartData')
	cart_prod = []
	for prod in json.loads(products):
		product_id = prod.get("product_id")
		qty = prod.get("product_quantity")
		product_details = getProducts(request=request, product_id = product_id, getById = True)
		prod_img = ProductImage.objects.filter(product_id=product_id).first()
		setattr(product_details, 'cart_qty', qty)
		cart_prod.append({
			"id": product_details.product_id,
			"name": product_details.product_name,
			"price": product_details.price,
			"qty": qty,
			"currency": product_details.currency_symbol,
			"image": str(prod_img.product_image),
			"total_quantity": str(product_details.quantity),
		})
	data = json.dumps(cart_prod)
	return HttpResponse(data)

def my_orders(request):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	cust_id = request.session['id']
	orders = CustomerOrder.objects.filter(customer_id=cust_id).order_by('-created_at')
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	paginator = Paginator(orders, 10)
	page_number = 1
	if request.GET.get('page'):
		page_number = request.GET.get('page')
	orders = paginator.get_page(page_number)
	params = {}                 
	params["store_currency"] = store_currency
	categories = getCategories()
	params["categories"] = categories
	params["current_user"] = current_user
	params["orders"] = orders
	params["page_range"] = paginator.page_range
	return render(request, "shop/myaccount/my-orders.html", params);

def order_details(request, order_id):
	current_user = logged_in_user_profile(request)
	if current_user == False:
		return redirect('/login')
	cust_id = request.session['id']
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	try:
		order_details =  CustomerOrder.objects.get(customer_id=cust_id, order_id=order_id)
		order_item = OrderItem.objects.filter(order_id=order_id).all()
		order_track = OrderStatus.objects.filter(order_id=order_id).all()
		categories = getCategories()
		for i in range(len(order_item)):
			prod_id = order_item[i].product_id
			get_prod_price = getProductPrice(request, prod_id)
			prod_img = ProductImage.objects.filter(product_id=prod_id).first()
			price = get_prod_price.get('price')
			prdimg = prod_img.product_image
			setattr(order_item[i], 'price', price)
			setattr(order_item[i], 'image', prdimg)
		track = {}
		params = {}                 
		params["store_currency"] = store_currency
		params["order_currency"] = getCurrrencySymbol(request, order_details.product_currency)
		params["categories"] = categories
		params["current_user"] = current_user
		params["order_details"] = order_details
		params["order_items"] = order_item
		params["order_track"] = order_track
		return render(request, "shop/myaccount/order-details.html", params);
	except:
		return  HttpResponse("No order found. Please go back and try again.")

def handler404(request, *args, **argv):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	response = render(request, 'shop/404.html', params)
	response.status_code = 404
	return response

def handler500(request, *args, **argv):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	response = render(request, 'shop/500.html', params)
	response.status_code = 500
	return response

def sell_with_us(request):
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	return render(request, "shop/sell-with-us.html", params)

def seller_portal(request):
	loggedinseller = request.user
	current_user = logged_in_user_profile(request)
	categories = getCategories()
	try:
		store_currency = request.session['store_currency']
	except:
		store_currency = "INR"
	params = {}                 
	params["store_currency"] = store_currency
	params["categories"] = categories
	params["current_user"] = current_user
	if loggedinseller.id is not None:
		return render(request, "shop/seller-loggedin-portal.html", params)
	else:
		return render(request, "shop/seller-portal.html", params)

def seller_register(request):
	loggedinseller = request.user
	if loggedinseller.id is not None:
		return HttpResponse('Action not allow')
	else:
		if request.method == 'POST':
			first_name = request.POST['first_name']
			last_name = request.POST['last_name']
			email = request.POST['email']
			username = request.POST['username']
			password = request.POST['password']
			password_confirmation = request.POST['password_confirmation']
			user = User.objects.create_user(username, email, password)
			user.first_name = first_name
			user.last_name = last_name
			user.save()
			group = Group.objects.get(name="Seller")
			group.user_set.add(user)
			messages.success(request, 'Your account has been created successfully! Please wait for admin approvel.')

			return redirect('/seller-portal')
		else:
			return HttpResponse('Method not allowed!')

def seller_logout(request):
	loggedinseller = request.user
	if loggedinseller.id is not None:
		sellerlogout(request)
		messages.success(request, 'Logged out successfully.')
		return redirect('/seller-portal')
	else:
		return HttpResponse('Already logged out.')

def forgot_password(request):
	if request.method == 'POST':
		username = request.POST['f_username']
		try:
			user = User.objects.get(username=username)
			param = {
				"name": user.first_name,
				"username": username
			}
			html_message = loader.render_to_string('shop/email/forgot_password.html',param)
			subject ="Regarding Forgot Password"
			from_email = "wtit786@gmail.com"
			email = user.email
			try:
				send_mail(
					subject,
					'',
					from_email,
					[email, from_email],
					fail_silently=False,
					html_message=html_message
				)
				messages.success(request, 'Email sent to your register email address please check once.')
			except Exception as e:
				messages.error(request, 'Something went Wrong. Please try again later.')
				
			return redirect('/seller-portal')
		except:
			messages.error(request, 'Username not found please try again.')
			return redirect('/seller-portal')

	else:
		return HttpResponse('Method not allowed.')

def reset_password(request):
	username = request.GET.get('uname')
	if username is not None:
		try:
			form = []
			user = User.objects.get(username=username)
			if request.method == 'POST':
				form = request.POST
				password = request.POST['password']
				new_password = request.POST['new_password']
				if user.check_password(password) is not True:
					messages.error(request, 'Old password is wrong.')
				else:
					user.set_password(new_password)
					user.save()
					messages.success(request, 'Password changed successfully.')
					return redirect('/seller-portal')
			current_user = logged_in_user_profile(request)
			categories = getCategories()
			try:
				store_currency = request.session['store_currency']
			except:
				store_currency = "INR"
			params = {}                 
			params["store_currency"] = store_currency
			params["categories"] = categories
			params["current_user"] = current_user
			params["user"] = user
			params["form"] = form
			return render(request, "shop/reset_password.html", params)
		except Exception as e:
			return HttpResponse('Something went wrong!')
	else:
		return HttpResponse('Some paramerters are missing in current url.')

