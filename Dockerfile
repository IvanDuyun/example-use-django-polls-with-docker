FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /code

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/IvanDuyun/django-polls-and-training

RUN python -m pip freeze > requirements.txt
COPY requirements.txt /code/

RUN pip install --upgrade pip
RUN python -m pip install django-polls-and-training/dist/django-polls-0.1.tar.gz
RUN pip install -r requirements.txt

COPY . /code/
