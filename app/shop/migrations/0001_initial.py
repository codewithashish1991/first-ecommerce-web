# Generated by Django 3.0.7 on 2020-07-13 09:30

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categorie',
            fields=[
                ('category_id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=120)),
                ('slug', models.SlugField(unique=True)),
                ('image', models.ImageField(default='', upload_to='shop/images/category')),
                ('status', models.BooleanField(default=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='shop.Categorie')),
            ],
        ),
        migrations.CreateModel(
            name='HomeBanner',
            fields=[
                ('banner_id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(default='', max_length=50)),
                ('banner_img', models.ImageField(default='', upload_to='shop/images/banners')),
                ('status', models.BooleanField(default=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('product_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=50)),
                ('old_price', models.IntegerField(default='0')),
                ('price', models.IntegerField(default='0')),
                ('slug', models.SlugField(unique=True)),
                ('quantity', models.IntegerField(default='0')),
                ('image', models.ImageField(default='', upload_to='shop/images/products')),
                ('description', tinymce.models.HTMLField(default='')),
                ('product_details', tinymce.models.HTMLField(default='')),
                ('no_of_sold_product', models.IntegerField(default='0')),
                ('featured_product', models.BooleanField(default=False)),
                ('status', models.BooleanField(default=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shop.Categorie')),
            ],
        ),
    ]
