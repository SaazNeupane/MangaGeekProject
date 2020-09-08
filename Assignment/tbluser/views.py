from django.shortcuts import render
from django.http import HttpResponse
from django.contrib import messages
from django.shortcuts import render, redirect
from django.contrib.auth.models import User,auth
# from django.contrib.auth.views import User
from django.contrib.auth import logout
from django.contrib.auth.forms import UserChangeForm, PasswordChangeForm
from tbluser.forms import UserEditForm, UserUpdateForm, ProfileUpdateForm, MembershipUpdateForm
from django.contrib.auth import update_session_auth_hash
from tbluser.models import Tbluser

# Create your views here.

def user_insert(request):
    if request.method == "POST":
        firstname = request.POST['firstname'];
        lastname = request.POST['lastname'];
        username = request.POST['username'];
        email = request.POST['email'];
        password = request.POST['password'];

        userinsert = User.objects.create_user(first_name=firstname,last_name=lastname,username=username, email=email, password=password)

        userinsert.save()
        messages.info(request, "Account Created")
        return redirect('/register')
    else:
        return render(request, "register.html")


def user_login(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        userlogin = auth.authenticate(username=username, password=password)
        if userlogin is not None:
            auth.login(request, userlogin)
            return redirect('/user')
        else:
            messages.info(request, "Invalid Login")
            return render(request, "login.html")
    else:
        return render(request, "login.html")

def user_logout(request):
    logout(request)
    return redirect('/home')

# def useredit(request):
#     if request.user.is_authenticated:
#         if request.method == 'POST':
#             form=UserEditForm(request.POST, instance=request.user)
#
#             if form.is_valid():
#                 form.save()
#                 return  redirect('/user')
#         else:
#             form = UserEditForm(instance=request.user)
#             args = {'form': form}
#             return render(request, 'useredit.html',args)
#     else:
#         return redirect("/login")

def useredit (request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            u_form = UserUpdateForm(request.POST, instance=request.user)
            p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.tbluser)

            if u_form.is_valid() and p_form.is_valid():
                u_form.save()
                p_form.save()
                return redirect('/user')
            else:
                messages.info(request, "Unable to update. Please meet all criteria.")
                return redirect('/useredit')
        else:
            u_form = UserUpdateForm(instance=request.user)
            p_form = ProfileUpdateForm(instance=request.user.tbluser)

        context = {
            'u_form': u_form,
            'p_form': p_form
        }

        return render(request, 'useredit.html',context)

def changepassword(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            form=PasswordChangeForm(data=request.POST, user=request.user)

            if form.is_valid():
                form.save()
                update_session_auth_hash(request, form.user)
                return redirect('/user')

            else:
                messages.info(request, "New Password didn't meet the criteria")
                return redirect('/password/')
        else:
            form = PasswordChangeForm(user=request.user)
            args = {'form': form}
            return render(request, 'changepassword.html',args)
    else:
        return redirect("/login")

# def changepassword(request):
#     if request.method == 'POST':
#         form = PasswordChangeForm(request.POST, instance=request.user)
#
#         if form.is_valid():
#             form.save()
#             return  redirect('/user')
#     else:
#         form = PasswordChangeForm()

def usermembership (request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            membership = MembershipUpdateForm(request.POST, instance=request.user.tbluser)
            # membership=Tbluser.objects.get(Membership=membership)
            if membership.is_valid():
                membership.save()
                return redirect('/user')
        else:
            membership = MembershipUpdateForm(instance=request.user.tbluser)
    else:
        return render(request, "subscription.html")
    context = {
        'membership': membership,
    }

    return render(request, 'subscription.html', context)