from django.shortcuts import render, redirect
from requested.forms import RequestedForm
from requested.models import Request
from django.core.files.storage import FileSystemStorage


# Create your views here.
def tblrequest_insert(request):
    if request.method == "POST":
        email = request.POST['email'];
        manganame = request.POST['manganame'];
        file = request.FILES['file'];
        fs=FileSystemStorage();
        image_new_name= manganame+ "mg" + file.name;

        description = request.POST['description'];

        reviewinsert=Request(email=email, manganame=manganame, file=image_new_name, information=description)

        fs.save(image_new_name, file)
        reviewinsert.save()
        return redirect('/userrequested')
    else:
        return render(request, "request.html")
def showallrequest(request):
    requested = Request.objects.all()
    return render(request, 'showrequest.html',{'requested': requested})