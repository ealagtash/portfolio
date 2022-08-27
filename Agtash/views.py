from django.shortcuts import render
#from django.http import HttpResponse, response
#from django.http import FileResponse, Http404
# Create your views here.
def index(request):

    return render(request, 'index.html')


