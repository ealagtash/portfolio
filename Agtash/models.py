from django.db import models

class pdf(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharFields(max_length=100)
    pdf = models.FileField(upload_to='books/pdfs/')

def __str__(self):
    return self.title

    
# Create your models here.