# Generated by Django 3.2.8 on 2021-10-27 04:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('controlMaletas', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cambios',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=30)),
                ('contraseña', models.CharField(max_length=50)),
            ],
        ),
    ]
