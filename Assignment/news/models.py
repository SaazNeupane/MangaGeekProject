from django.db import models

# Create your models here.

class News(models.Model):
    newsphoto = models.ImageField(max_length=100)
    headline = models.CharField(max_length=100)
    news = models.CharField(max_length=1000)
    photo = models.ImageField(max_length=100)
    date = models.DateTimeField(auto_now_add=True)
    othernews1 = models.ImageField(max_length=100)