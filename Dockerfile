FROM python:3.9.9

WORKDIR /home/

RUN git clone https://github.com/JJingu/django_home_test04.git

WORKDIR /home/django_home_test04/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-akkpezbrn6=l=69ugb#%ai&#3j3y-5-a*iv2jj6=c^t5bhp3@h" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]