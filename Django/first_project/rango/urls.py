from django.conf.urls import url
from rango import views

urlpatterns = [
    url(r'^bout/',views.index,name='index'),
    url(r'^rango/bout/',views.bout,name='bout')
]










