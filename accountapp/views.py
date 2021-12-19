from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect

# Create your views here.



def hello_world(request):
    # return render(request, 'accountapp/hello_world.html', context={'hello_world_list': hello_world_list})
    return render(request, 'base.html')
