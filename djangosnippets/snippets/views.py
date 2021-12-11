from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def top(request):
    return HttpResponse(b"Hello World!")

def snippet_new(request):
    return HttpResponse(b"create snippet")

def snippet_edit(request, snippet_id):
    return HttpResponse(b"edit snippet")

def snippet_detail(request, snippet_id):
    return HttpResponse(b"show snippet")
