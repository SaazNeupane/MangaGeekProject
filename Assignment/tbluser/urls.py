from django.urls import  path
from . import views

urlpatterns= [
    path('userregister', views.user_insert),
    path('userlogout', views.user_logout),
    path('userlogin', views.user_login),
    path('useredit', views.useredit),
    path('password/', views.changepassword),
    path('membership', views.usermembership)
    ]