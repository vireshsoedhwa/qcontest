FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code


RUN apt-get update && apt-get upgrade -y

RUN pip install --upgrade pip

COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

RUN apt-get install -y postgresql-client-11


# COPY ./docker-entrypoint.sh /
# RUN chmod +x /docker-entrypoint.sh
# ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]