# Generated by Django 3.0.7 on 2020-07-28 06:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0030_remove_orderstatus_is_send_order_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderstatus',
            name='send_email_status',
            field=models.BooleanField(default=True),
        ),
    ]
