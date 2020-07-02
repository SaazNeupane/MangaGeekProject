from django.shortcuts import render, redirect, get_object_or_404
from .models import News

# Create your views here.


def show_news(request):
    data=News.objects.all()
    context = {
        'queryset': data,
    }
    return render(request, "manganews.html", context)


def singlenews(request, id):
    news = get_object_or_404(News, id=id)
    news_all = News.objects.all()
    return render(request, "berserknews.html", {'news_single': news, 'news_all': news_all})


def NewsFilterView(request):
    qs = News.objects.all()
    title = request.GET.get('title')
    if title != '' and title is not None:
        qs = qs.filter(headline__icontains=title)
    context = {
        'queryset':qs,
    }
    return render(request, "manganews.html", context)