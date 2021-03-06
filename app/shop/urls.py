from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name = "ShopHome"),
    path('about', views.about, name = "AboutUs"),
    path('cart', views.cart, name = "Cart"),
    path('checkout', views.checkout, name = "Checkout"),
    path('review', views.review, name = "Review"),
    path('contact', views.contact, name = "ContactUs"),
    path('login', views.login, name = "Login"),
    path('logout', views.logout, name = "LogOut"),
    path('dashboard', views.dashboard, name = "Dashboard"),
    path('product-details/<slug:slug>', views.product_view, name = "ProductView"),
    path('collections/<slug:slug>', views.category_product, name = "CategoryProduct"),
    path('register', views.register, name = "Register"),
    path('register_user', views.register_user, name = "RegisterUser"),
    path('search', views.search, name = "Search"),
    path('my-address', views.myaddress, name = "MyAddress"),
    path('my-wishlist', views.myWishlist, name = "MyWishlist"),
    path('my-address/mark-as-default/<int:address_id>', views.mark_default, name = "makeDefault"),
    path('my-address/delete/<int:address_id>', views.delete_address, name = "deleteAddress"),
    path('ajax_state/<int:country_id>', views.ajax_states, name = "getAjaxStates"),
    path('ajax_state/get/<int:state_id>', views.ajax_get_state, name = "getAjaxState"),
    path('ajax_country/get/<int:country_id>', views.ajax_get_country, name = "getAjaxCountry"),
    path('ajax_my_adress/<int:address_id>', views.ajax_my_adress, name = "getAjaxAddress"),
    path('change-password', views.change_password, name = "changePassword"),
    path('my-reviews', views.myreview, name = "MyReviews"),
    path('review/delete/<int:review_id>', views.delete_review, name = "DeleteReview"),
    path('currency/<str:currency_code>', views.change_currency, name = "changeCurrency"),
    path('add-to-wishlist/<int:product_id>/<str:slug>', views.add_to_wishlist, name = "AddToWishlist"),
    path('remove-from-wishlist/<int:product_id>/<str:slug>', views.remove_from_wishlist, name = "RemoveFromWishlist"),
    path('get_cart_product', views.cart_product, name='cart_product'),
    path('my-orders', views.my_orders, name='MyOrders'),
    path('orders/<int:order_id>', views.order_details, name='MyOrders'),
    path('sell-with-us', views.sell_with_us, name='sellWithUs'),
    path('seller-portal', views.seller_portal, name='sellerPortal'),
    path('seller-register', views.seller_register, name='sellerRegister'),
    path('seller-logout', views.seller_logout, name='sellerLogout'),
    path('forgot_password', views.forgot_password, name='ForgotPasword'),
    path('reset_password', views.reset_password, name='resetPassword'),
]
