from django.shortcuts import redirect, render
# 지역 검색
from post.models import Post,Tag

def search(request):
    if request.method == 'POST':
        if request.method == 'POST':
            keyword = request.POST.get('search_button') # keyword를 입력받음
            if Tag.objects.filter(tag_content=keyword): # 해당 키워드를 가진 tag 클래스 오픈
               tag = Tag.objects.filter(tag_content=keyword)
               post= Post.objects.filter(tagging__in = tag).order_by('-posting_date') # 해당 태그를 가진 post 저장

               return render(request, 'search_result.html', {'keyword':keyword})
            else:
               return render(request, 'no_search.html')
        elif request.method == 'GET':
            return redirect('/')
    return render(request, 'button.html')