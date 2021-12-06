import os
from django.core.mail import send_mail
from django.template import loader
from shop.models import (
	CustomerOrder,
	OrderStatus,
)

def send_order_status_cron_job():
	order_status = OrderStatus.objects.filter(send_email_status=False)
	if len(order_status) > 0:
		for od in order_status:
			order_id = od.order.order_id
			order_details = CustomerOrder.objects.get(order_id=order_id)
			customer_email = order_details.customer.email_address
			customer_name = order_details.customer.first_name+ ' '+order_details.customer.last_name
			description = od.description
			order_status = od.get_order_status_display()
			params = {
				'customer_name': customer_name,
				'description': description,
				'order_id': order_id,
			}

			html_message = loader.render_to_string('subscribers/email/send_order_status.html',params)
			from_email = "ashish@gmail.com"
			subject =  str(order_status) + ': Regarding Your order no:-' + str(order_id)
			try:
				send_mail(
					subject,
					'',
					from_email,
					[customer_email],
					fail_silently=False,
					html_message=html_message
				)
				OrderStatus.objects.filter(order_id=order_id).update(send_email_status=True)
				print('mail sent')
			except Exception as e:
				print('mail sending failed')
	else:
		pass

