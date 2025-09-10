FROM python:3

WORKDIR /data

RUN python -m ensurepip --upgrade
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000
