from django.contrib import admin
from .models import Newsletter

# Register your models here.
@admin.register(Newsletter)
class NewsletterAdmin(admin.ModelAdmin):
	list_display = ('email_address', 'is_verified', 'status')
	ordering = ('-created_at',)
	search_fields = ('email_address',)
	readonly_fields = ('verify_token',)
	exclude = ('verify_token',)
