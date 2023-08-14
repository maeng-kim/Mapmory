from django.shortcuts import render, redirect
from .models import CustomUser, CustomUserManager
from django.contrib import auth
from django.contrib.auth import login, authenticate
from django.views.decorators.csrf import csrf_protect
@csrf_protect

#회원가입
def signup(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        password2 = request.POST['password2']
        email = request.POST['email']

        if password == password2:
            user = CustomUser.objects.create_user(
                username=username,
                password=password,
                email=email,
            )
            login(request, user=user)
            return redirect('login_view') # 회원가입 성공 시 이동할 URL 연결할 곳
        return render(request, 'signup.html')
    return render(request, 'signup.html')

#로그인
def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user=user)
            return redirect('post:post_form') # 로그인 성공 시 이동할 URL 연결할 곳
        else:
            return render(request, 'login.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'login.html')

#로그아웃
def logout(request):
    logout(request)
    return redirect('login_view')

def home(request):
    return render(request, 'home.html')