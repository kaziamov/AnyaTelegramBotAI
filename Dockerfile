FROM ubuntu:latest
LABEL authors="mac"

#https://stackoverflow.com/questions/53835198/integrating-python-poetry-with-docker

ENTRYPOINT ["top", "-b"]