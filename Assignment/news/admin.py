from django.contrib import admin
from .models import News

# Register your models here.
class NewsAdmin(admin.ModelAdmin):
    list_display = ('newsphoto', 'headline', 'news', 'photo', 'date', 'othernews1')

admin.site.register(News, NewsAdmin)