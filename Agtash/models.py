from django.db import models

def __str__(self):
    return self.title

class projects(models.Model):
    name=models.CharField(max_length=100)
    details = models.CharField(max_length=100)
#class resume(models.Model):
    #name=models.CharField(max_length=100)
   # details = models.CharField(max_length=100)
# Create your models here.