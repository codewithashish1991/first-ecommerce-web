# Generated by Django 3.0.7 on 2020-07-28 06:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0029_orderstatus_is_send_order_status'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orderstatus',
            name='is_send_order_status',
        ),
    ]
