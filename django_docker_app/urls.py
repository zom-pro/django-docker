from django.urls import include, path

from django_docker_app import views

urlpatterns = [
    path("", views.the_app_view),
]
