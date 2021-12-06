from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.mail import send_mail
from django.template import loader
from .models import Newsletter
import random
import string
from django.contrib import messages

# Create your views here.

def add(request):
	email = request.POST.get('email')
	verify_token = get_random_string(25)
	param = {
		"email": email,
		"verify_token": verify_token
	}
	exists_email = Newsletter.objects.filter(email_address = email).first()
	if exists_email == None:
		subject ="Newsletter subscribers."
		from_email = "wtit786@gmail.com"
		html_message = loader.render_to_string('subscribers/email/subscribe.html',param)
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
		newsletter = Newsletter(email_address = email, verify_token = verify_token)
		newsletter.save()
		messages.success(request, 'Newsletter subscribed successfully! Please check your email to verify your email address.')
	else:
		messages.error(request, 'Email is already exist.', extra_tags='email_exist')
	
	return redirect('/')

def get_random_string(length):
    # Random string with the combination of lower and upper case
    letters = string.ascii_letters
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str

def verify(request):
	token = request.GET.get('token')
	if token :
		exists_token = Newsletter.objects.filter(
				verify_token = token
			).first()
		if exists_token is not None:
			Newsletter.objects.filter(
				verify_token = token
			).update(
				verify_token = '',
				is_verified = True
			)
			messages.success(request, 'Email verified successfully!')
		else:
			messages.error(request, 'Invalid token.', extra_tags='email_exist')
	else:
		messages.error(request, 'Please pass token to verify your email address.', extra_tags='email_exist')
	return redirect('/')
