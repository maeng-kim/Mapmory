# views.py
from django.shortcuts import redirect, render

def search(request):
    if request.method == 'POST':
        keyword = request.POST.get('keyword')  # keyword를 입력받음
        tag = Tag.objects.filter(tag_content=keyword)  # 해당 키워드를 가진 tag 클래스 오픈
        if tag:
            post = Post.objects.filter(hashtag__tag_content=keyword).order_by('-datetime')  # 해당 태그를 가진 post 저장
            return render(request, 'search_result.html', {'post': post, 'keyword': keyword})
        else:
            return render(request, 'no_search.html')
    return render(request, 'button.html')
