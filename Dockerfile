FROM python:3.9.9

WORKDIR /home/

RUN echo "test211225"

RUN git clone https://github.com/JJingu/home_test.git

WORKDIR /home/jjinkong/

RUN pip install -r requirements.txt

RUN echo "django-insecure-akkpezbrn6=l=69ugb#%ai&#3j3y-5-a*iv2jj6=c^t5bhp3@h" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]