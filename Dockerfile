# syntax=docker/dockerfile:1 for jupyter notebook
# jupyter/scipy-notebook as base image
# sets working folder to /home/jovyan/repo
# copies requirements.txt in there
# runs pip install for requirements.txt packages
# explicitly states port 8888 is exposed
FROM jupyter/scipy-notebook
WORKDIR /home/jovyan/repo
USER root
RUN apt update && apt-get -y upgrade && apt -y install git
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888