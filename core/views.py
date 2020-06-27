from django.http import HttpResponse
from django.contrib import messages
from django.shortcuts import render, redirect
from django.contrib.auth.models import User,auth
from django.contrib.auth import logout
from django.contrib.auth.hashers import check_password
from .decorators import unauthenticated_user
from comic.models import Wishlist
from tbluser.models import Tbluser


def start(request):
    return render(request, "startpage.html")


def home(request):
    return render(request, "home.html")


def naruto(request):
    return render(request, "naruto.html")


def login(request):
    return render(request, "login.html")


def register(request):
    return render(request, "register.html")


def terms(request):
    return render(request, "terms.html")


def privacy(request):
    return render(request, "privacy.html")


def user(request):
    if request.user.is_authenticated:
        wishlist = Wishlist.objects.filter(user=request.user)

    tbluser = Tbluser.objects.all()
    context = {
        'wishlist':wishlist,
        'tbluser':tbluser,
    }

    if request.user.is_authenticated:
        return render(request, "user.html", context)
    else:
        return redirect("/")


def deletewishlist(request, id):
    wishlist = Wishlist.objects.get(id=id)
    wishlist.delete()
    return redirect("/user")


def review(request):
    return render(request, "review.html")


def berserknews(request):
    return render(request, "berserknews.html")


def request(request):
    return render(request, "request.html")


def subscription(request):
    if request.user.is_authenticated:
        return render(request,"subscription.html")
    else:
        return redirect("/login")
