from django.urls import reverse
from django.contrib.auth.models import User
from django.db import models


# Create your models here.


class Genre(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Author(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Publisher(models.Model):
    name = models.CharField(max_length=100)
    location = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Comic(models.Model):
    title = models.CharField(max_length=100)
    author = models.ForeignKey(Author, on_delete=models.CASCADE)
    coverphoto = models.ImageField(max_length=100, null=True)
    backgroundphoto = models.ImageField(max_length=100)
    photo1 = models.ImageField(max_length=100)
    photo2 = models.ImageField(max_length=100)
    summary1 = models.CharField(max_length=1000)
    summary2 = models.CharField(max_length=1000)
    summary3 = models.CharField(max_length=1000)
    description = models.CharField(max_length=1000, null=True)
    genre = models.ManyToManyField(Genre)
    published = models.DateField(blank=True, null=True)
    publisher = models.ManyToManyField(Publisher)
    likes = models.ManyToManyField(User, blank=True)
    pdf = models.FileField(max_length=100, null=True)
    updated_at = models.DateTimeField(auto_now=True)
    Membership = models.BooleanField(default=False)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('singlecomic', kwargs={'id': self.id})
    
    def total_likes(self):
        return self.likes.count()


class Comment(models.Model):
    comic = models.ForeignKey(Comic, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    reply = models.ForeignKey('Comment', null=True, related_name='replies', on_delete=models.CASCADE)
    content = models.TextField(max_length=1000)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '{}-{}'.format(self.comic.title, str(self.user.username))


class Wishlist(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    wished_comic = models.ForeignKey(Comic, on_delete=models.CASCADE)
    added = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.wished_comic.title
