from django.shortcuts import render
#다국어지원
from django.conf import settings
from rest_framework.decorators import api_view #api_view: 함수 기반의 뷰를 API뷰로 만들어주는 역할
from rest_framework.response import Response #API뷰에서 응답 데이터를 생성할 때 사용
from django.utils.translation import gettext as _ #gettext: 다국어 지원을 위해 사용되는 함수, 번역된 문자열을 반환
#비밀번호 변경
from django.contrib.auth.hashers import check_password
from django.contrib import messages, auth
from django.shortcuts import redirect

# 다국어 지원 기능
@api_view(['POST', 'GET'])
def set_language(request):
    language_code = request.data.get('language_code')

    if language_code:
        supported_languages = [code for code, _ in settings.LANGUAGES] #프로젝트에서 지원하는 언어 목록
        if language_code in supported_languages:
            request.session[settings.LANGUAGE_SESSION_KEY] = language_code #세션에 언어 코드 값을 저장, 클라이언트의 언어 설정을 유지하는 데 사용
            return Response({'detail': _('Language setting updated.')}) #_('Language setting updated.'): 다국어 지원을 위해 번역된 문자열을 가져옴
        else:
            return Response({'detail': _('Invalid language code.')}, status=400) #언어 코드가 지원되지 않는 경우, "Invalid language code."와 같은 오류 응답을 반환

    return Response({'detail': _('No language code provided.')}, status=400) #언어코드를 전달하지 않은 경우,  "No language code provided."와 같은 오류 응답을 반환

# 비밀번호 변경
@login_required
def change_password(request):
  if request.method == "POST":
    user = request.user
    origin_password = request.POST["origin_password"]
    if check_password(origin_password, user.password):
      new_password = request.POST["new_password"]
      confirm_password = request.POST["confirm_password"]
      if new_password == confirm_password:
        user.set_password(new_password)
        user.save()
        auth.login(request, user, backend='django.contrib.auth.backends.ModelBackend')
        return redirect('profile')
      else:
        messages.error(request, 'Password not same')
    else:
      messages.error(request, 'Password not correct')
    return render(request, 'change_password.html')
  else:
    return render(request, 'change_password.html')