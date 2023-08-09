from django.shortcuts import render

# 지역 검색
from .local_data import loactions, recommended_places

def search(request):
    if request.method == 'POST':
        keyword = request.POST.get('search_button') # 지역(keyword) 입력받음
        # 입력 받은 지역이 데이터베이스에 있는 지역과 일치하면 search_result.html로 이동
        # 일치하지 않을 경우도 search_result.html로 이동
        