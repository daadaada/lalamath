
import os
import sys
import django
# ?????????UTF8
reload(sys)
sys.setdefaultencoding('utf8')
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "courses.settings")
django.setup()

from django.core.handlers.wsgi import WSGIHandler
application = WSGIHandler()

