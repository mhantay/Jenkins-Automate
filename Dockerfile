FROM python:3

WORKDIR /data

# Upgrade pip and setuptools to ensure distutils is provided
RUN python -m ensurepip --upgrade \
 && pip install --upgrade pip setuptools

RUN pip install django==3.2

COPY . .

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
