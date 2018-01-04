# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-15 10:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mathematics', '0013_auto_20170406_1305'),
    ]

    operations = [
        migrations.AddField(
            model_name='neuron',
            name='complexity',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='neuron',
            name='difficulty',
            field=models.IntegerField(choices=[(1, '1'), (2, '2'), (3, '3')], default=1),
        ),
    ]
