# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-15 15:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Neuron',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('detail', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('code', models.CharField(max_length=100)),
                ('category', models.IntegerField(choices=[(1, 'Expl'), (2, 'Exer'), (3, 'Prob'), (4, 'DIY')])),
                ('problem', models.TextField()),
                ('problempicture1', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('problempicture2', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('problempicture3', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('problempicture4', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('problempicture5', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('problempicture6', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicesa', models.TextField(blank=True, null=True)),
                ('choicesb', models.TextField(blank=True, null=True)),
                ('choicesc', models.TextField(blank=True, null=True)),
                ('choicesd', models.TextField(blank=True, null=True)),
                ('choicese', models.TextField(blank=True, null=True)),
                ('choicesf', models.TextField(blank=True, null=True)),
                ('choicepicturea', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicepictureb', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicepicturec', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicepictured', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicepicturee', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('choicepicturef', models.ImageField(blank=True, null=True, upload_to='theall/image/')),
                ('answer', models.CharField(choices=[('A', 'A'), ('B', 'B'), ('C', 'C'), ('D', 'D'), ('E', 'E'), ('F', 'F')], max_length=200)),
                ('solutionspicture1', models.ImageField(blank=True, null=True, upload_to='theall/image')),
                ('solutionspicture2', models.ImageField(blank=True, null=True, upload_to='theall/image')),
                ('solutionspicture3', models.ImageField(blank=True, null=True, upload_to='theall/image')),
                ('solutions', models.TextField()),
                ('linkability1', models.FloatField(blank=True, null=True)),
                ('linkability2', models.FloatField(blank=True, null=True)),
                ('linkability3', models.FloatField(blank=True, null=True)),
                ('linkability4', models.FloatField(blank=True, null=True)),
                ('linkability5', models.FloatField(blank=True, null=True)),
                ('linkability6', models.FloatField(blank=True, null=True)),
                ('linkpersonaility', models.FloatField(blank=True, null=True)),
                ('errors', models.TextField(blank=True, null=True)),
                ('alternativesolutions', models.TextField(blank=True, null=True)),
                ('messagefailure', models.TextField(blank=True, null=True)),
                ('messagesuccess', models.TextField(blank=True, null=True)),
                ('sensitivity', models.FloatField(blank=True, null=True)),
                ('gussingparameter', models.FloatField(blank=True, null=True)),
                ('difficulty', models.IntegerField(choices=[(1, 'easy'), (2, 'not very easy'), (3, 'medium'), (4, 'a little difficult'), (5, 'difficult')])),
            ],
        ),
    ]