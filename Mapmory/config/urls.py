from django.urls import path
from . import views
urlpatterns = [
    path('', views.set_language, name = 'language_setting'),
    path('change_password/',views.change_password, name="re_password"),
]
