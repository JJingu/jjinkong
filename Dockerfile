FROM python:3.9.9

WORKDIR /home/

RUN echo "test9875"

RUN echo "test654"

RUN echo "test123"

RUN echo "test9875"

RUN echo "test654"

RUN echo "test123"

RUN git clone https://github.com/JJingu/jjinkong.git

WORKDIR /home/jjinkong/

RUN pip install -r requirements.txt

RUN pip install mysqlclient

RUN pip install gunicorn

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=jjinkong.settings.deploy && gunicorn jjinkong.wsgi --env DJANGO_SETTINGS_MODULE=jjinkong.settings.deploy --bind 0.0.0.0:8000"]
