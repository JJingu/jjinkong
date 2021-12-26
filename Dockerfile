FROM python:3.9.9

WORKDIR /home/

RUN git clone https://github.com/JJingu/jjinkong.git

WORKDIR /home/jjinkong/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN echo "SECRET_KEY=django-insecure-akkpezbrn6=l=69ugb#%ai&#3j3y-5-a*iv2jj6=c^t5bhp3@h" > .env

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["gunicorn", "jjinkong.wsgi", "--bind", "0.0.0.0:8000"]
