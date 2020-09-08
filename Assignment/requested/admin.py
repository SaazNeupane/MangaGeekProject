from django.contrib import admin

# Register your models here.
from requested.models import Request

# Register your models here.
class RequestAdmin(admin.ModelAdmin):
    list_display = ('email','manganame','file', 'information')

admin.site.register(Request, RequestAdmin)
