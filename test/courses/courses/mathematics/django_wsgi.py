
import os
import sys

# ?????????UTF8
reload(sys)
sys.setdefaultencoding('utf8')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "../courses.settings")

from django.core.handlers.wsgi import WSGIHandler
application = WSGIHandler()

