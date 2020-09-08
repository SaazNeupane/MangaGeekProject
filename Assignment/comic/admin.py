from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import  Genre, Author, Publisher, Comic, Comment
# Register your models here.

class ComicAdmin(admin.ModelAdmin):
    list_display = ('title', 'author', 'coverphoto', 'backgroundphoto',
                    'photo1','photo2','summary1','summary2','summary3',
                    'description','genre','published','publisher','likes',
                    'pdf', 'updated_at', 'Membership')

admin.site.register(Genre)
admin.site.register(Author)
admin.site.register(Publisher)
admin.site.register(Comic)
admin.site.register(Comment)
