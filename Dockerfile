FROM ubuntu
LABEL maintainer="prasad.rayudu93@gmail.com"
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
