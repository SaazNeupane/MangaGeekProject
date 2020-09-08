from django.urls import  path
from . import views

urlpatterns = [
    path('userrequest',views.tblrequest_insert),
    path('userrequested',views.showallrequest),
]