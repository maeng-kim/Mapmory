from django.shortcuts import render
from post.models import Post
from django.contrib.auth.decorators import login_required

@login_required
def search(request):
    if request.method == 'POST':

        keyword = request.POST.get('keyword')
        post = Post.objects.filter(location=keyword)
        if post:
            return render(request, 'search_result.html', {'hashtag_name':keyword, 'posts':post})
        else:
            return render(request, 'no_search.html')
    return render(request, "button.html")