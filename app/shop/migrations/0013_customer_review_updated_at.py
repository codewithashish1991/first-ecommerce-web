# Generated by Django 3.0.7 on 2020-07-15 06:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0012_auto_20200714_1757'),
    ]

    operations = [
        migrations.AddField(
            model_name='customer_review',
            name='updated_at',
            field=models.DateTimeField(auto_now=True),
        ),
    ]