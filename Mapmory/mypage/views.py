from django.shortcuts import render, redirect, get_object_or_404
from .forms import UserProfileForm
from .models import UserProfile
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from post.views import post_form_view
from post.models import Post, Photo
from post.forms import PostForm
from django.http import HttpResponseForbidden, Http404
from django.core.serializers import deserialize
import os
from django.conf import settings

@login_required
def mypage_view(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)
    user_posts = Post.objects.filter(writer=request.user)
    return render(request, 'mypage.html', {'user_profile': user_profile, 'user_posts': user_posts})

@login_required
def edit_profile(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)

    #프로필 생성됨 -> 디폴트 값 생성
    if created:
        user_profile.nickname = "nickname"
        user_profile.age = 20
        user_profile.travel_style = "Adventure"
        user_profile.save()

    if request.method == 'POST':
        form = UserProfileForm(request.POST, request.FILES, instance=user_profile)

        if form.is_valid():
            user_profile.nickname = form.cleaned_data['nickname'] 
            user_profile.age = form.cleaned_data['age']
            user_profile.travel_style = form.cleaned_data['travel_style']
            
            user_profile.save()

            return redirect('mypage:mypage')
            
    else:
        form = UserProfileForm(instance=user_profile)
    return render(request, 'edit_profile.html', {'form': form})

@login_required
def view_post(request, username):
    post = get_object_or_404(Post, username=username)
    return render(request, 'view_post.html', {'post': post})

@login_required
def my_posts(request):
    user_posts = Post.objects.filter(writer=request.user)
    return render(request, 'my_posts.html', {'user_posts': user_posts})

@login_required
def edit_post(request, post_id):
    try:
        post = Post.objects.get(writer=request.user, id=post_id)
    except Post.DoesNotExist:
        raise Http404("글이 존재하지 않습니다.")
    
    if post.writer != request.user:
        return HttpResponseForbidden("해당 글 작성자가 아닙니다.")
    
    photos = Photo.objects.filter(post=post)
    
    if request.method == 'POST':
        form = PostForm(request.POST, instance=post)
        if form.is_valid():
            form.save()
            return redirect('mypage:mypage')
    else:
        form = PostForm(instance=post)

    return render(request, 'edit_post.html', {'form': form})
