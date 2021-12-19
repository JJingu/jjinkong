from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.



def hello_world(request):
    return HttpResponse('HELLO WORLD!\n 안녕하세요')
