FROM python:3.9.9

RUN echo "testing35"

WORKDIR /home/

RUN git clone https://github.com/JJingu/jjinkong.git

WORKDIR /home/jjinkong/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

RUN echo "SECRET_KEY=django-insecure-akkpezbrn6=l=69ugb#%ai&#3j3y-5-a*iv2jj6=c^t5bhp3@h" > .env

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=jjinkong.settings.deploy && gunicorn jjinkong.wsgi --env DJANGO_SETTINGS_MODULE=jjinkong.settings.deploy --bind 0.0.0.0:8000"]
