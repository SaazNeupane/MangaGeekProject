from django.contrib import admin
from tbluser.models import Tbluser
# Register your models here.

class TblUserAdmin(admin.ModelAdmin):
    list_display = ('user','bio','nickname','City','profilephoto','backgroundphoto','Membership');
admin.site.register(Tbluser, TblUserAdmin)
