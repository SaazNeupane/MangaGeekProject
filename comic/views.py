from .models import Genre, Author, Publisher, Comic, Comment, Wishlist
from .forms import *
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404
from django.db.models import Q
from django.contrib.auth.models import User
from django.template.loader import render_to_string
from django.contrib import messages
from tbluser.models import Tbluser

def show_allmanga(request):
    qs = MangaFilterView(request)
    comments = Comment.objects.all()
    genres = Genre.objects.all()
    context = {
        'queryset': qs,
        'comments': comments,
        'genres':genres
    }
    return render(request, "allmanga.html", context)


def singlemanga(request, id):
    comic = get_object_or_404(Comic, id=id)
    comrep = Comment.objects.all()
    comments = Comment.objects.filter(comic=comic, reply=None).order_by('-id')
    is_liked = False
    if comic.likes.filter(id=request.user.id).exists():
        is_liked = True

    if request.method == 'POST':
        comment_form = CommentForm(request.POST or None)
        if comment_form.is_valid():
            content = request.POST.get('content')
            reply_id = request.POST.get('comment_id')
            comment_qs = None
            if reply_id:
                comment_qs = Comment.objects.get(id=reply_id)
            comment = Comment.objects.create(comic=comic, user=request.user, content=content, reply=comment_qs)
            comment.save()
            # return HttpResponseRedirect(comic.get_absolute_url())
    else:
        comment_form = CommentForm()
    
    if request.method == 'POST':
        wished_comic, created = Wishlist.objects.get_or_create(wished_comic=comic, user=request.user)
        # return redirect("/user")
    
    context = {
        'manga_single': comic,
        'is_liked': is_liked,
        'total_likes': comic.total_likes(),
        'comments': comments,
        'comment_form': comment_form,
        'comrep': comrep,
    }
    if request.is_ajax():
        html = render_to_string('ajax_comment.html', context, request=request)
        return JsonResponse({'form':html})

    return render(request, "naruto.html", context)


def is_valid_queryparam(param):
    return param != '' and param is not None


def MangaFilterView(request):
    qs = Comic.objects.all()
    title = request.GET.get('title')
    author = request.GET.get('author')
    min_likes = request.GET.get('min_likes')
    max_likes = request.GET.get('max_likes')
    min_date = request.GET.get('min_date')
    max_date = request.GET.get('max_date')
    genre = request.GET.get('genre')

    if is_valid_queryparam(title):
        qs = qs.filter(title__icontains=title)

    elif is_valid_queryparam(author):
        qs = qs.filter(author__name__icontains=author)

    # elif is_valid_queryparam(min_likes):
    #     qs = qs.filter(likes__gte=min_likes)
    #
    # elif is_valid_queryparam(max_likes):
    #     qs = qs.filter(likes__lt=max_likes)

    elif is_valid_queryparam(min_date):
        qs = qs.filter(published__gte=min_date)

    elif is_valid_queryparam(max_date):
        qs = qs.filter(published__lt=max_date)

    elif is_valid_queryparam(genre) and genre != 'choose':
        qs = qs.filter(genre__name=genre)

    return qs


def search_titles(request):
    if request.method == "POST":
        search_text = request.POST['search_text']
        if search_text is not None and search_text != u"":
            mangas = Comic.objects.filter(title__icontains=search_text)
        else:
            mangas = []
        return render(request, 'ajax_search.html', {'mangas': mangas})


def like_comic(request):
    comic = get_object_or_404(Comic, id=request.POST.get('id'))
    is_liked = False
    if comic.likes.filter(id=request.user.id).exists():
        comic.likes.remove(request.user)
        is_liked = False
    else:
        comic.likes.add(request.user)
        is_liked = True
    context = {
        'manga_single': comic,
        'is_liked': is_liked,
        'total_likes': comic.total_likes(),
    }
    if request.is_ajax():
        html = render_to_string('ajax_like.html', context, request=request)
        return JsonResponse({'form':html})

