# Generated by Django 4.0.4 on 2023-09-20 01:03

from django.db import migrations, models
import django.utils.timezone
import documentos.models


class Migration(migrations.Migration):

    dependencies = [
        ('documentos', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='documento',
            name='arquivo_pdf',
            field=models.FileField(default=django.utils.timezone.now, upload_to='pdfs/', validators=[documentos.models.validate_pdf]),
            preserve_default=False,
        ),
    ]
