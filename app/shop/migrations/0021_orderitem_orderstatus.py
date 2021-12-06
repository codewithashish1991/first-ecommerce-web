# Generated by Django 3.0.7 on 2020-07-23 07:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0020_auto_20200723_1233'),
    ]

    operations = [
        migrations.CreateModel(
            name='OrderStatus',
            fields=[
                ('order_status_id', models.AutoField(primary_key=True, serialize=False)),
                ('order_status', models.CharField(choices=[('ORD', 'Ordered'), ('PKD', 'Packed'), ('SPD', 'Shipped'), ('DLD', 'Delivered'), ('CLD', 'Canceled')], default='ORD', max_length=20)),
                ('description', models.CharField(max_length=250)),
                ('send_email_status', models.BooleanField(default=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shop.CustomerOrder')),
            ],
        ),
        migrations.CreateModel(
            name='OrderItem',
            fields=[
                ('item_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField(default='')),
                ('product_price', models.FloatField(default='')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shop.CustomerOrder')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shop.Product')),
            ],
        ),
    ]
