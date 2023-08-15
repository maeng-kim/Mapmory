from django.shortcuts import render,redirect, get_object_or_404
from .models import Post,Hashtag
from .forms import PostForm
from accounts.models import CustomUser
from django.contrib.auth.decorators import login_required
from django.contrib.auth import get_user_model
from django.http import JsonResponse
import json
from django.core.serializers import deserialize
import os
from django.conf import settings
from django.utils import timezone
from django.urls import reverse
from django.views.generic import ListView, TemplateView

def post_form_view(request):
    fixture_file = os.path.join(settings.BASE_DIR, 'post','fixtures','hashtags.json')
    with open(fixture_file, 'r') as f:
        fixture_data = f.read()
    hashtag_objects = deserialize('json', fixture_data)
    hashtags = [obj.object for obj in hashtag_objects]
    #hashtag = Hashtag.objects.all()
    selected_hashtags = request.session.get('selected_hashtags', [])  # 현재 선택된 해시태그들을 가져옴

    if request.method == 'POST':
        selected_hashtags = request.POST.getlist('hashtags')
        request.session['selected_hashtags'] = selected_hashtags
        return redirect('post:create_post', username=request.user.id)
    return render(request, 'hashtag.html', {'hashtags':hashtags}, {'datetime':timezone.now()})

#json 데이터 확인
def get_hashtag_json(request):
    hashtag = [
        {"name": "#Silent"},
        {"name": "#The_Hip"},
        {"name": "#For_E"},
        {"name": "#Noisy"},
        {"name": "#Fancy"},
        {"name": "#Comfortable"},
        {"name": "#For_I"},
        {"name": "#Lovely"},
        {"name": "#Korean_Food"},
        {"name": "#Chinese_Food"},
        {"name": "#Western_Food"},
        {"name": "#Japanese_Food"},
        {"name": "#Good_for_Taking_Pictures"},
        {"name": "#A_Group_Gathering"},
        {"name": "#Good_To_Eat_Alone"},
        {"name": "#Broad"},
        {"name": "#Trendy"},
        {"name": "#Good_View"},
        {"name": "#Mukbang"},
        {"name": "#Good_for_dating"},
        {"name": "#Funny"}
    ]
    return JsonResponse(hashtag, safe=False) 

@login_required
def create_post(request, username):
    #print(custom_id)
    user = get_object_or_404(CustomUser, pk=username)
    #custom_id = custom_id
    selected_hashtags = request.session.get('selected_hashtags',[])

    if request.method == 'POST':
        form = PostForm(request.POST)
       # form = PostForm(request.POST, selected_hashtags=selected_hashtags)
        if form.is_valid():
            post = form.save(commit=False)
            post.writer = request.user
            post.datetime = timezone.now()
            post.tags = request.POST.get('tag', '').split(',')
            post_image = request.FILES.get('post_image')
            if post_image:
                post.post_image = post_image

            post.save()
        
            try:
                post.post_image = request.FILES['post_image']
            except:
                post.post_image = None

            #form.save_m2m() #ManyToManyField에 저장
            for hashtag_name in selected_hashtags:
                hashtag, created = Hashtag.objects.get_or_create(name=hashtag_name)
                post.hashtag.add(hashtag)
            return redirect('post:end')
    else:
        form = PostForm()
        #form = PostForm(selected_hashtags=selected_hashtags)
    return render(request, 'post.html', {'username':username,'form':form, 'selected_hashtags':selected_hashtags})

def end_view(request):
    return render(request, 'end.html')


def index(request):
    all_post = post.objects.all().order_by("-pub_date")





