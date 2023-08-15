from django.urls import path
from .views import post_form_view, get_hashtag_json, create_post, end_view

app_name = "post"

urlpatterns = [
    path('post_form/', post_form_view, name='post_form'),
    path('hashtag/', get_hashtag_json,name='해시태그 선택'),
    path('create_post/<int:username>/', create_post, name='create_post'),
    path('end/', end_view, name='end'),
]