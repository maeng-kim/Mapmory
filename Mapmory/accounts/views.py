from django.shortcuts import render, redirect
from .models import CustomUser, CustomUserManager
from django.contrib import auth
from django.contrib.auth import login, authenticate
from django.views.decorators.csrf import csrf_protect
@csrf_protect

#회원가입
def signup(request):
    if request.method == 'POST':
        custom_id = request.POST['custom_id']
        password = request.POST['password']
        password2 = request.POST['password2']
        email = request.POST['email']

        if password == password2:
            user = CustomUser.objects.create_user(
                username=custom_id,
                password=password,
                email=email,
            )
            print("User created:", user.username, user.email)
            login(request, user=user)
            return redirect('login_view') # 회원가입 성공 시 이동할 URL 연결할 곳
        return render(request, 'signup.html')
    return render(request, 'signup.html')

#로그인
def login_view(request):
    if request.method == 'POST':
        custom_id = request.POST['custom_id']
        password = request.POST['password']
        user = authenticate(request, username=custom_id, password=password)
        if user is not None:
            login(request, user=user)
            print("User logged in:", user.username, user.email)
            print("User password:", user.password)
            return redirect('home') # 로그인 성공 시 이동할 URL 연결할 곳
        else:
            print("Login failed for user:", custom_id)
            return render(request, 'login.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'login.html')

#로그아웃
def logout(request):
    logout(request)
    return redirect('login_view')

def home(request):
    return render(request, 'home.html')