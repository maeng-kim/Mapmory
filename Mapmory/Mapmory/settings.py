from pathlib import Path
import os
# import environ
# import pymysql
'''
pymysql.install_as_MySQLdb()
env = environ.Env(
    # set casting, default value
    DEBUG=(bool, False)
)

# Set the project base directory
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Take environment variables from .env file
environ.Env.read_env(os.path.join(BASE_DIR, '.env'))

os.environ.get('AWS_BUCKET') # 기본 사용방법

# Build paths inside the project like this: BASE_DIR / 'subdir'.
#BASE_DIR = Path(__file__).resolve().parent.parent
'''
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!

SECRET_KEY = 'django-insecure-5_pa08b*n7an&_gkwo7+crz_1g=^1f3@(y-!)i5i%wih3sbt!j'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['34.64.136.249']

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'post',
    'rest_framework',
    'accounts',
    'mypage',
    'config',
    'recommend',
    'django.contrib.staticfiles',
]

SESSION_ENGINE ='django.contrib.sessions.backends.db'
AUTH_USER_MODEL = 'accounts.CustomUser'

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Mapmory.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'Mapmory.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

#데베 디버그용/ 릴리즈용 구분
'''
if DEBUG is True:
    DATABASES = {
        "default" : {
            "ENGINE": "django.db.backends.mysql",
            "NAME":"mysql",
            "USER":"admin",
            "PASSWORD":"sungshin_jjang10%",
            "HOST":"database-1.csjknswpgg8e.ap-northeast-2.rds.amazonaws.com",
            "PORT":"3306",
            'OPTIONS':{
            'init_command' : "SET sql_mode='STRICT_TRANS_TABLES'"
            },
        }
    }
    
else:
    DATABASES = {
        "default": {
            "ENGINE": "django.db.backends.mysql",
            "NAME": os.environ.get("DB_NAME"),
            "USER":os.environ.get("DB_USER"),
            "PASSWORD":os.environ.get("DB_PASSWORD"),
            "HOST":os.environ.get("DB_HOST"),
            "PORT":os.environ.get("DB_PORT"),
            'OPTIONS':{
            'init_command' : "SET sql_mode='STRICT_TRANS_TABLES'"
            },
        }
        
    }'''
    
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR , 'db.sqlite3'),
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = 'ko'
LANGUAGES = [
    ('ko', 'Korean'),
    ('en', 'English'),
]

TIME_ZONE = 'UTC'

TIME_ZONE = 'Asia/Seoul'


USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]

# STATIC_ROOT = os.path.join(BASE_DIR, 'static')
# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',
]
LOGIN_REDIRECT_URL = 'home'
LOGIN_URL = 'mypage'  # 로그인 URL을 실제로 사용하는 이름으로 변경
LOGOUT_URL = 'login_view'  # 로그아웃 URL을 실제로 사용하는 이름으로 변경
LOCALE_PATHS = [os.path.join(BASE_DIR, 'config', 'locale')]

LANGUAGE_SESSION_KEY = 'my_language'
MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
LOCALE_PATHS = [os.path.join(BASE_DIR, 'locale')]





