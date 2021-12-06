# Generated by Django 3.0.7 on 2020-07-24 08:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0025_auto_20200724_1203'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('contact_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(default='', max_length=255)),
                ('email', models.CharField(blank=True, max_length=250)),
                ('phone', models.CharField(blank=True, max_length=12)),
                ('message', models.TextField(blank=True, max_length=12)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
