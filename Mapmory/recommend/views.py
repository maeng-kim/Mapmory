from django.shortcuts import redirect, render
# 지역 검색
from django.http import JsonResponse
# 지역별 추천 장소 JSON 데이터 생성
local_data = {
   "locations":[
      {
         "name":"서울",
         "recommended_places":[
            {
               "name":"롯데월드",
               "images":["/img/롯데월드1.jpg","/img/롯데월드2.jpg","/img/롯데월드3.jpg","/img/롯데월드4.jpg",],
            },
            {
               "name":"뚝섬 한강 공원",
               "images":["/img/뚝섬1.jpg","/img/뚝섬2.jpg","/img/뚝섬3.jpg","/img/뚝섬4.jpg","/img/뚝섬5.jpg",],
            },
         ],
      },
      {
         "name":"부산",
         "recommended_places":[
            {
               "name":"광안리",
               "images":["/img/광안리1.jpg","/img/광안리2.jpg"],
            },
            {
               "name":"해운대",
               "images":["/img/해운대.jpg"],
            },
         ],
      },
      {
         "name":"제주도",
         "recommended_places":[
            {
               "name":"금오름",
               "images":["/img/금오름1.jpg","/img/금오름2.jpg"],
            },
            {
               "name":"협재 해수욕장",
               "images":["/img/협재1.jpg","/img/협재2.jpg"],
            },
         ],
      },
   ]
}
def local_data_json(request):
   
   return JsonResponse(local_data)
   
def search(request):
    if request.method == 'POST':
        keyword = request.POST.get('keyword') # 지역(keyword) 입력받음
        if keyword:
           for location in local_data["locations"]:
              if location["name"]==keyword:
                 return render(request, "search_result.html", location)
        return render(request, 'search_result.html')
    return render(request, 'button.html')

def local_search(request):
    if request.method == 'POST':
        if request.method == 'POST':
            keyword = request.POST.get('search_button') # keyword를 입력받음
            tag = Tag.objects.filter(tag_content=keyword) # 해당 키워드를 가진 tag 클래스 오픈
            post= Post.objects.filter(tagging__in = tag).order_by('-posting_date') # 해당 태그를 가진 post 저장

        #if post:
        #    post_ = post[0]
        #else:
        #    post_ = None

            return render(request, 'post/search_result.html', {'post':post, 'keyword':keyword})
        elif request.method == 'GET':
            return redirect('/')
    return render(request, 'button.html')