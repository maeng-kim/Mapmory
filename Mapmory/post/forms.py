from django import forms
from .models import Post, Hashtag

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['title','contents']

    '''def __init__(self, *args, **kwargs):
        selected_hashtags = kwargs.pop('selected_hashtags', None)
        super(PostForm, self).__init__(*args, **kwargs)
        if selected_hashtags:
            self.fields['hashtag'].queryset = Hashtag.objects.filter(name__in=selected_hashtags)'''
