# Generated by Django 5.0.6 on 2024-06-28 23:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gestion_peluqueria', '0005_delete_carritoitem'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='imagen',
            field=models.ImageField(blank=True, null=True, upload_to='imagenes/'),
        ),
    ]
