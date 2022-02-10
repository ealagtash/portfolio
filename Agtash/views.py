from django.shortcuts import render
from django.http import HttpResponse, response
from django.http import FileResponse, Http404
# Create your views here.
def index(request):

    return render(request, 'index.html')

def main(request):
    return render(request,'template.html')

def book_list(request):
    return render(request, 'book_list.html')

def upload_book(request):
    return render(request, 'upload_book.html')
