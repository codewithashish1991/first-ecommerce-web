from django.db import models
from django.conf import settings
from tinymce.models import HTMLField
from django.contrib.auth.models import User

shop_media = 'shop/images/'
# Create your models here.

class Categorie(models.Model):
	category_id = models.AutoField(primary_key=True)
	title = models.CharField(max_length=120)
	slug = models.SlugField(unique=True)
	parent = models.ForeignKey('self', null=True, blank=True, on_delete=models.CASCADE, related_name='children')
	image = models.ImageField(upload_to= shop_media + "category", default="")
	status = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.title

	def __unicode__(self):
		return self.title

	def Category_Picture(self):
		if self.image:
			from django.utils.html import mark_safe
			return mark_safe('<img src="'+settings.MEDIA_URL+'%s" width="100" />' % (self.image))
		else:
			return "None"
		Category_Picture.short_description = 'Image'
		Category_Picture.allow_tags = True


class Product(models.Model):
	product_id = models.AutoField(primary_key=True)
	seller_id = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
	product_name = models.CharField(max_length=50)
	category = models.ForeignKey("Categorie", on_delete=models.CASCADE)
	avialable_on = models.CharField(max_length=20, choices=[('INDIA', 'India'), ('OUTSIDEINDIA', 'Out Side India'), ('BOTH', 'Both')], default="INDIA")
	search_tag = models.TextField(default="")
	slug = models.SlugField(unique=True)
	quantity = models.IntegerField(default="0")
	# image = models.ImageField(upload_to= shop_media + "products", default="")
	description = HTMLField(default="")
	product_details = HTMLField(default="")
	no_of_sold_product = models.IntegerField(default="0")
	featured_product = models.BooleanField(default=False)
	status = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.product_name

	def product_description(self):
		if self.description:
			from django.utils.html import mark_safe
			return mark_safe(self.description)
		else:
			return ""
		product_description.allow_tags = True

	def details(self):
		if self.product_details:
			from django.utils.html import mark_safe
			return mark_safe(self.product_details)
		else:
			return ""
		Product_Picture.allow_tags = True

class ProductPrice(models.Model):
	"""docstring for PoductPrice"""
	currency_code = [
		('INR', 'India Rupee'),
		('USD', 'US Dollar'),
		('GBP', 'British Pound'),
		('AUD', 'Australian Dollar'),
		('EUR', 'Euro')
	]
	price_id = models.AutoField(primary_key=True)
	product = models.ForeignKey('Product', on_delete=models.CASCADE)
	old_price = models.FloatField(default="0.0")
	price = models.FloatField(default="0.0")
	price_currency_code = models.CharField(max_length=20, choices = currency_code, default="INR")
	old_currency_rate = models.FloatField(max_length=5, default="0.0")
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def currency_symbol(self):
		from django.utils.html import mark_safe
		return mark_safe(self.currency_symbol)
		currency_symbol.allow_tags = True


class CurrencyConversationRate(models.Model):
	currency_code = [
		('INR', 'India Rupee'),
		('USD', 'US Dollar'),
		('GBP', 'British Pound'),
		('AUD', 'Australian Dollar'),
		('EUR', 'Euro')
	]
	conversation_id = models.AutoField(primary_key=True)
	currency_code_from = models.CharField(max_length=5, default = "INR")
	currency_code_to = models.CharField(max_length=20, choices = currency_code, unique=True)
	rate = models.FloatField(max_length=5, default="0.0")
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

class ProductImage(models.Model):
	id = models.AutoField(primary_key=True)
	product = models.ForeignKey('Product', on_delete=models.CASCADE)
	product_image = models.ImageField(upload_to= shop_media + "products", default="")



# Create your models here.
class HomeBanner(models.Model):
	banner_id = models.AutoField(primary_key=True)
	title = models.CharField(max_length=50, default="")
	banner_img = models.ImageField(upload_to= shop_media + "banners", default="")
	status = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def Banner_Picture(self):
		if self.banner_img:
			from django.utils.html import mark_safe
			return mark_safe('<img src="'+settings.MEDIA_URL+'%s" width="100" />' % (self.banner_img))
		else:
			return "None"
		Banner_Picture.short_description = 'Image'
		Banner_Picture.allow_tags = True

class Customer(models.Model):
	"""docstring for Customer"""
	gender = [
		('MALE', 'Male'),
		('FEMALE', 'Female')
	]
	customer_id = models.AutoField(primary_key=True)
	first_name = models.CharField(max_length=50, default="")
	last_name = models.CharField(max_length=50, default="", blank=True)
	gender = models.CharField(max_length=20, choices = gender, default='MALE')
	username = models.CharField(max_length=200, default="", unique=True)
	email_address = models.EmailField(max_length=200, default="", unique=True)
	mobile_no = models.CharField(max_length=15, default="")
	password = models.CharField(max_length=50, default="")
	status = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.first_name

class Countrie(models.Model):
	id = models.AutoField(primary_key=True)
	sortname = models.CharField(max_length=200)
	name = models.CharField(max_length=200)
	phonecode = models.IntegerField(default="0")
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.name

class State(models.Model):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=200)
	country = models.ForeignKey('Countrie', on_delete=models.CASCADE)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.name

class CustomerAddres(models.Model):
	address_type = [
		('HOME', 'Home'),
		('OFFICE', 'Office')
	]
	address_id = models.AutoField(primary_key=True)
	customer = models.ForeignKey('Customer', on_delete=models.CASCADE)
	name = models.CharField(max_length=100, default="")
	mobile = models.CharField(max_length=15)
	alternative_mobile = models.CharField(max_length=15, blank=True)
	pincode = models.CharField(max_length=10)
	address = HTMLField()
	city = models.CharField(max_length=50)
	state = models.ForeignKey('State', on_delete =models.CASCADE)
	country = models.ForeignKey('Countrie', on_delete =models.CASCADE)
	landmark = models.CharField(max_length=50, blank=True)
	address_type = models.CharField(max_length=50, choices = address_type, default='HOME')
	default_address = models.BooleanField(default=False)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return self.address


class CustomerWishList(models.Model):
	wishlist_id = models.AutoField(primary_key=True)
	customer = models.ForeignKey('Customer', on_delete=models.CASCADE)
	product = models.ForeignKey('Product', on_delete=models.CASCADE)
	created_at = models.DateTimeField(auto_now_add=True)


class CustomerOrder(models.Model):
	currency_code = [
		('INR', 'India Rupee'),
		('USD', 'US Dollar'),
		('GBP', 'British Pound'),
		('AUD', 'Australian Dollar'),
		('EUR', 'Euro')
	]
	payment_status = [
		('UNPAID', 'Unpaid'),
		('PAID', 'Paid'),
		('REFUND', 'Refund')
	]
	order_status = [
		('ORD', 'Ordered'),
		('PKD', 'Packed'),
		('SPD', 'Shipped'),
		('OFD', 'Out For Delivery'),
		('DLD', 'Delivered'),
		('CLD', 'Canceled')
	]
	order_id = models.AutoField(primary_key=True)
	customer = models.ForeignKey('Customer', on_delete=models.CASCADE)
	address = models.ForeignKey('CustomerAddres', on_delete=models.CASCADE)
	payment_method = models.CharField(max_length=15)
	product_total = models.FloatField(default="")
	product_gst_amount = models.FloatField(default="")
	product_payable_amount = models.FloatField(default="")
	shipping_charge = models.IntegerField(default="")
	product_currency = models.CharField(max_length=20, choices = currency_code, default="INR")
	payment_status = models.CharField(max_length=15, choices = payment_status, default="Unpaid")
	order_latest_status = models.CharField(max_length=15, choices = order_status, default="ORD")
	expected_date =  models.DateField(null=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

class CustomerReview(models.Model):
	Review_id = models.AutoField(primary_key=True)
	customer = models.ForeignKey('Customer', on_delete=models.CASCADE)
	product = models.ForeignKey('Product', on_delete=models.CASCADE)
	order = models.ForeignKey('CustomerOrder', on_delete=models.CASCADE)
	rating = models.IntegerField(default="0")
	review = models.CharField(max_length = 200, blank=True)
	image = models.ImageField(upload_to= shop_media + "review", blank=True, default="")
	status = models.BooleanField(default = False)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

class OrderItem(models.Model):
	"""docstring for Order_Item"""
	item_id = models.AutoField(primary_key=True)
	order = models.ForeignKey('CustomerOrder', on_delete=models.CASCADE)
	product = models.ForeignKey('Product', on_delete=models.CASCADE)
	quantity = models.IntegerField(default="")
	product_price = models.FloatField(default="")
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

class OrderStatus(models.Model):
	status = [
		('ORD', 'Ordered'),
		('PKD', 'Packed'),
		('SPD', 'Shipped'),
		('OFD', 'Out For Delivery'),
		('DLD', 'Delivered'),
		('CLD', 'Canceled')
	]
	order_status_id = models.AutoField(primary_key=True)
	order = models.ForeignKey('CustomerOrder', on_delete=models.CASCADE)
	order_status = models.CharField(max_length=20, choices = status, default="ORD")
	description = models.CharField(max_length=250, blank = True)
	send_email_status = models.BooleanField(default=False)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

class Contact(models.Model):
	contact_id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=255, default="")
	email = models.CharField(max_length=250, blank = True)
	phone = models.CharField(max_length=12, blank = True)
	message = models.TextField(max_length=12, blank = True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
