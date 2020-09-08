from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save

# Create your models here.
class Tbluser(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.CharField(max_length=500, blank=True)
    nickname = models.CharField(max_length=500, blank=True)
    City = models.CharField(max_length=100, blank=True)
    profilephoto = models.ImageField(max_length=100, blank=True)
    backgroundphoto = models.ImageField(max_length=100, blank=True)
    Membership = models.CharField(max_length=100,default="No")

def create_profile(sender, **kwargs):
    if kwargs['created']:
        user_profile = Tbluser.objects.create(user=kwargs['instance'])
post_save.connect(create_profile, sender=User)