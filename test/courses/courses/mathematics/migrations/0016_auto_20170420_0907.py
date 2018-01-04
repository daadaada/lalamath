# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-20 09:07
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mathematics', '0015_auto_20170418_1012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='action',
            name='content',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AlterField(
            model_name='action',
            name='method',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AlterField(
            model_name='neuron',
            name='complexity',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='users',
            name='login',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]