from django.contrib import admin
from .models import (
	Categorie,
	Contact,
	CurrencyConversationRate,
	Customer,
	CustomerAddres,
	CustomerOrder,
	CustomerReview,
	HomeBanner,
	OrderItem,
	OrderStatus,
	Product,
	ProductImage,
	ProductPrice,
)


# admin.site.site_header = 'My project'                    # default: "Django Administration"
admin.site.index_title = 'Deal With Us'                 # default: "Site administration"
admin.site.site_title = 'HTML title from adminsitration'

# Register your models here.
class ProductImageInline(admin.TabularInline):
	model = ProductImage
	extra = 1

class ProductPriceInline(admin.TabularInline):
	model = ProductPrice
	extra = 1

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
	inlines = [ProductImageInline, ProductPriceInline]
	list_display = ('product_name', 'category', 'quantity', 'sold_by')
	ordering = ('-created_at',)
	search_fields = ('product_name', 'description')
	readonly_fields = ('seller_id', 'no_of_sold_product',)

	def sold_by(self, obj):
		if obj.seller_id is not None:
			return obj.seller_id
		else:
			''
	
	def save_model(self, request, obj, form, change):
		if getattr(obj, 'seller_id', None) is None:
			obj.seller_id = request.user
		obj.save()

	def get_queryset(self, request):
		qs = super(ProductAdmin, self).get_queryset(request)
		if request.user.is_superuser:
			return qs
		else:
			return qs.filter(seller_id=request.user)

@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
	list_display = ('name', 'email', 'phone', 'created_at')
	ordering = ('-created_at',)
	search_fields = ('name','email','phone')

@admin.register(Customer)
class CustomerAdmin(admin.ModelAdmin):
	list_display = ('first_name', 'email_address', 'mobile_no', 'status')
	ordering = ('-created_at',)
	search_fields = ('first_name', 'email_address')
	readonly_fields = ('password',)

@admin.register(CustomerAddres)
class CustomerAddressAdmin(admin.ModelAdmin):
	list_display = ('customer', 'mobile', 'city', 'state','country', 'address_type', 'default_address')
	ordering = ('-created_at',)
	search_fields = ('name', 'mobile')

@admin.register(CustomerReview)
class CustomerReviewAdmin(admin.ModelAdmin):
	list_display = ('customer', 'product','order_id','rating','review', 'status')
	ordering = ('-created_at',)

class OrderItemInline(admin.TabularInline):
	model = OrderItem
	extra = 1

class OrderStatusInline(admin.TabularInline):
	model = OrderStatus
	extra = 1
	readonly_fields = ('send_email_status',)


@admin.register(CustomerOrder)
class CustomerOrderAdmin(admin.ModelAdmin):
	inlines = [OrderItemInline, OrderStatusInline]
	list_display = ('order_id', 'address', 'payment_method', 'product_payable_amount', 'payment_status', 'get_order_latest_status_display')
	ordering = ('-created_at',)
	search_fields = ('customer__first_name', 'address__address', 'payment_method', )

@admin.register(HomeBanner)
class HomeBannerAdmin(admin.ModelAdmin):
	list_display = ('title', 'Banner_Picture', 'status')
	ordering = ('-created_at',)
	search_fields = ('title',)
	readonly_fields = ('Banner_Picture',)

@admin.register(CurrencyConversationRate)
class CurrencyConversationRateAdmin(admin.ModelAdmin):
	list_display = ('currency_code_to', 'currency_code_from', 'rate')
	ordering = ('-created_at',)
	readonly_fields = ('currency_code_from',)

@admin.register(Categorie)
class CategorieAdmin(admin.ModelAdmin):
	def parent_category(self, obj):
		if obj.parent is not None:
			return obj.parent
		else:
			'NO'

	list_display = ('title', 'Category_Picture', 'parent_category', 'status')
	ordering = ('-created_at',)
	search_fields = ('title','parent__title')
	readonly_fields = ('Category_Picture',)
# admin.site.register(Category)

#https://stackoverflow.com/questions/33075804/how-to-show-image-in-django-admin
