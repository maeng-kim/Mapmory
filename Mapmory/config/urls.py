from django.urls import path
from . import views

app_name = 'settings'

urlpatterns = [
    path('config_home/',views.config_home, name="config_home"),
    path('config_security/',views.config_secuity, name="config_security"),
    path('change_password/',views.change_password, name="re_password"),# 비밀번호 변경
    path('set_language/', views.set_language, name='set_language'), #언어 변경
    path('ko_en/', views.ko_en, name="ko_en"),
    path('show_email/',views.show_email, name='show_email'), # 연결된 이메
]
