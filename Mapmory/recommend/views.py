from django.shortcuts import render
from . import local_data
# 지역 검색
from .local_data import locations, recommended_places

def search(request):
    if request.method == 'POST':
        keyword = request.POST.get('keyword') # 지역(keyword) 입력받음
        if keyword == "서울":
           return render(request, 'seoul.html')
        elif keyword == local_data.locations[1]:
           return render(request, 'busan.html')
        elif keyword == local_data.locations[2]:
           return render(request, 'jeju.html')
        else:
           return render(request, 'search_result.html')
    return render(request, 'button.html')