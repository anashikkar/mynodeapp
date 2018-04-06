# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
import socket


# Create your views here.
def index(request):
    return HttpResponse("Hello, world. You're at the polls Index and my first app on %s" % socket.gethostname())
