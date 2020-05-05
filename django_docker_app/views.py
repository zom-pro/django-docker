from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse, HttpResponseNotFound

def the_app_view(request):
    return HttpResponse('<h1>It is working</h1>')