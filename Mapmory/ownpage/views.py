from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.contrib import messages
from .forms import ProfileForm
from django.contrib.auth.decorators import login_required

# Create your views here.

def mypage(request, pk):
    user = User.objects.get(pk=pk)
    if user.profile:
        profile = user.profile
        context = {'profile':profile}
        return render(request, 'accounts/mypage.html', context)
    else:
        return redirect('accounts:profile_create', user.pk)

@login_required
def profile_create(request):
    if request.method == 'POST':
        form = ProfileForm(request.POST)
        if form.is_valid():
            profile = form.save(commit=False)
            profile.user = request.user
            profile.save()
            messages.add_message(request, messages.INFO, 'Welcome!! Now you can enjoy our community!')
            return redirect('community:review_list')
    else:
        form = ProfileForm()
    context = {
            'form' : form
        }
    return render(request, 'accounts/profile_form.html', context)


@login_required                
def profile_update(request):
    user = get_object_or_404(User, pk=request.user.pk)
    if request.method == 'POST':
        form = ProfileForm(request.POST, instance=request.user.profile)
        if form.is_valid():
            profile = form.save(commit=False)
            profile.user = request.user
            profile.save()
            return redirect('accounts:mypage', user.pk)
    else:
        form = ProfileForm( instance=request.user.profile)
    context = {
        'form' : form
    }
    return render(request, 'accounts/profile_form.html', context)