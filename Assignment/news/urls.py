from django.urls import  path
from . import views


urlpatterns= [
path('manganews', views.show_news),
path('singlenews/<id>', views.singlenews),
path('newsfilter', views.NewsFilterView),
]