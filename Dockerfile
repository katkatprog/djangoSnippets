FROM ubuntu:latest
WORKDIR /root/src

RUN apt update && apt-get update
RUN apt install -y git curl wget nano vim
RUN apt install -y python3-pip
RUN apt install -y sqlite3
RUN pip3 install Django
RUN pip3 install djangorestframework
RUN pip3 install django-cors-headers
RUN pip3 install tzdata
RUN pip3 install django-tailwind
RUN pip3 install django-bootstrap5
RUN pip3 install django-pygments-renderer