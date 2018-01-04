# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-24 12:38
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mathematics', '0006_auto_20170317_0928'),
    ]

    operations = [
        migrations.CreateModel(
            name='Chapter',
            fields=[
                ('id', models.CharField(max_length=100, primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='Connect',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('detail', models.CharField(max_length=200)),
            ],
        ),
        
        migrations.AddField(
            model_name='neuron',
            name='a',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='neuron',
            name='b',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='neuron',
            name='x',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='neuron',
            name='y',
            field=models.FloatField(default=1),
            preserve_default=False,
        ),
        
        
    ]
