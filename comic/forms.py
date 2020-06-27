from django import forms
from .models import Comment


class CommentForm(forms.ModelForm):
    content = forms.CharField(label="", widget=forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Write a comment..', 'rows':'2', 'cols': '50'}))
    # reply = forms.CharField(label="", widget=forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Write a reply..', 'rows':'1', 'cols': '30'}))
    class Meta:
        model = Comment
        fields = ('content',)