from django.contrib import admin
from .models import Post


class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'writer', 'datetime')  # 작성 시간 추가

admin.site.register(Post, PostAdmin)
