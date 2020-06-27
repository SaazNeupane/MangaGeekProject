from django import forms
from requested.models import Request

class RequestedForm(forms.ModelForm) :
    class meta:
        model = Request
        #fields = ("tblnews_headline", "tblnews_news")for particular
        fields = "__all__"