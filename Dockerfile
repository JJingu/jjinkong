FROM python:3.9.9

WORKDIR /home/

RUN echo "hahahahaha"

RUN echo "hahahahaha"

RUN echo "hahahahaha"

RUN git clone https://github.com/JJingu/jjinkong.git

WORKDIR /home/jjinkong/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=jjinkong.settings.deploy && python manage.py migrate --settings=jjinkong.settings.deploy && gunicorn jjinkong.wsgi --env DJANGO_SETTINGS_MODULE=jjinkong.settings.deploy --bind 0.0.0.0:8000"]
