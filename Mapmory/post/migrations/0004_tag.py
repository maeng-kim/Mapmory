# Generated by Django 4.2.3 on 2023-08-15 20:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0003_remove_hashtag_num'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag_content', models.CharField(max_length=30)),
            ],
        ),
    ]