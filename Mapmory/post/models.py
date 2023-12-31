from django.db import models
from django.utils import timezone
from accounts.models import CustomUser


#해시태그 모델
class Hashtag(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name
    
#태그
class Tag(models.Model):
    tag_content = models.CharField(max_length=30)
    
    def __str__(self):
        return self.tag_content

#글 작성
class Post(models.Model):
    title = models.CharField(max_length=60, verbose_name='제목')
    contents = models.TextField(verbose_name='글쓰기')
    writer = models.ForeignKey(CustomUser, on_delete=models.CASCADE, null=True)
    hashtag = models.ManyToManyField(Hashtag)
    datetime = models.DateTimeField(auto_now=True)
    location = models.CharField(max_length=20, verbose_name='지역', null=True)
    tagging = models.ManyToManyField(Tag, through='PostTag', related_name='tagged_posts')

    def __str__(self):
        return self.title

class PostTag(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    tag = models.ForeignKey(Tag, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('post', 'tag')
        db_table = 'post_posttag'
#사진 올리는 모델
class Photo(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE, null=True)
    image = models.ImageField(upload_to = 'images/', blank=True, null=True)
    
    def __str__(self):
        return str(self.image)

