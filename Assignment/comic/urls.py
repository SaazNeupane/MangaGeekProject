from django.urls import  path
from . import views

urlpatterns = [
    path('allmanga', views.show_allmanga),
    # path('mangafilter', views.MangaFilterView),
    path('singlemanga/<id>', views.singlemanga, name='singlecomic'),
    path('search', views.search_titles),
    path('likes', views.like_comic)
]

