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
    email = forms.EmailField(label="Email", widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': ''}))
    first_name = forms.CharField(label="First Name", widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': ''}))
    last_name = forms.CharField(label="Last Name", widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': ''}))
    username = forms.CharField(label="Username", widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': ''}))

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