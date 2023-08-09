from django.urls import path
from . import views
urlpatterns = [
    path('change_password/',views.change_password, name="re_password"),# 비밀번호 변경
    path('set_language/', views.set_language, name='set_language'), #언어 변경
    path('show_email/',views.show_email, name='show_email'), # 연결된 이메일
]
