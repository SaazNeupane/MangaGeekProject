from django.db import models

# Create your models here.
# Create your models here.
class Request(models.Model):
    manganame = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    file = models.CharField(max_length=100)
    information = models.CharField(max_length=500)