FROM python:3

WORKDIR /data

RUN python -m ensurepip --upgrade \
 && pip install --upgrade pip setuptools

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000
