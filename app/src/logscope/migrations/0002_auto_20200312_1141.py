# Generated by Django 2.2.6 on 2020-03-12 11:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('logscope', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='division',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
