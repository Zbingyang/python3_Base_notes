from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse('<a href="/bout/">来一下</a>')

def bout(request):
    return HttpResponse('<a href="/rango/bout/">点一下</a>')