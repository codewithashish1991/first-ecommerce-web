from django.db import models

# Create your models here.
class Newsletter(models.Model):
	newsletter_id = models.AutoField(primary_key=True)
	email_address = models.CharField(max_length=255, default = "")
	verify_token = models.CharField(max_length=255, default="", null=True)
	is_verified = models.BooleanField(default=False)
	status = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True, null=True)
	updated_at = models.DateTimeField(auto_now=True)

