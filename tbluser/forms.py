from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserChangeForm
from .models import  Tbluser

class UserEditForm(UserChangeForm):
    class Meta:
        model=User
        fields = (
            'email',
            'first_name',
            'last_name',
            'username'
        )
        # exclude = (
        #     'password',
        # )

class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model=User
        fields = [
            'email',
            'first_name',
            'last_name',
            'username'
        ]

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Tbluser
        fields = ['profilephoto','backgroundphoto','bio','City','nickname']

class MembershipUpdateForm(forms.ModelForm):
    class Meta:
        model = Tbluser
        fields = ['Membership']