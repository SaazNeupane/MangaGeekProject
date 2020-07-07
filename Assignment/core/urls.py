from django.urls import  path
from . import views

urlpatterns = [
    path('', views.start),
    path('home', views.home),
    path('berserknews', views.berserknews),
    path('naruto', views.naruto),
    path('login', views.login),
    path('register', views.register),
    path('terms', views.terms),
    path('privacy', views.privacy),
    path('user', views.user),
    path('review', views.review),
    path('request', views.request),
    path('subscription', views.subscription),
    path('wishlist/delete/<id>', views.deletewishlist)
]
