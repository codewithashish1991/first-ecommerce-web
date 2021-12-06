# Generated by Django 3.0.7 on 2020-07-17 06:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0014_customer_addres_default_address'),
    ]

    operations = [
        migrations.CreateModel(
            name='CurrencyConversationRate',
            fields=[
                ('conversation_id', models.AutoField(primary_key=True, serialize=False)),
                ('currency_code_from', models.CharField(default='INR', max_length=5)),
                ('currency_code_to', models.CharField(choices=[('INR', 'India Rupee'), ('USD', 'US Dollar'), ('GBP', 'British Pound'), ('AUD', 'Australian Dollar'), ('EUR', 'Euro')], max_length=20, unique=True)),
                ('rate', models.FloatField(default='0.0', max_length=5)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='product',
            name='old_price',
        ),
        migrations.RemoveField(
            model_name='product',
            name='price',
        ),
        migrations.AddField(
            model_name='product',
            name='avialable_on',
            field=models.CharField(choices=[('INDIA', 'India'), ('OUTSIDEINDIA', 'Out Side India'), ('BOTH', 'Both')], default='INDIA', max_length=20),
        ),
        migrations.CreateModel(
            name='ProductPrice',
            fields=[
                ('price_id', models.AutoField(primary_key=True, serialize=False)),
                ('old_price', models.FloatField(default='0.0')),
                ('price', models.FloatField(default='0.0')),
                ('price_currency_code', models.CharField(choices=[('INR', 'India Rupee'), ('USD', 'US Dollar'), ('GBP', 'British Pound'), ('AUD', 'Australian Dollar'), ('EUR', 'Euro')], default='INR', max_length=20)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shop.Product')),
            ],
        ),
    ]