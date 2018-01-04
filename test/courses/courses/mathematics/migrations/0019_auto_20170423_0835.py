# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-23 08:35
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mathematics', '0018_auto_20170420_1256'),
    ]

    operations = [
        migrations.CreateModel(
            name='Keyword',
            fields=[
                ('keyword', models.CharField(max_length=100, primary_key=True, serialize=False)),
            ],
        ),
        migrations.AddField(
            model_name='question',
            name='keyword',
            field=models.ManyToManyField(null=True, to='mathematics.Keyword'),
        ),
    ]
