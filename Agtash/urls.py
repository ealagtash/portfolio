from django.urls import path
from . import views
#from django.urls import re_path


urlpatterns = [
    path('',views.index, name='index'),
    path('books/', views.book_list, name='booklist'),
    path('books/upload/', views.upload_book, name='uploadbook'),
]