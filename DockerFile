FROM python:3.5
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/pp
COPY ./requirements.txt /usr/src/app
RUN pip install --upgrade pip
RUN pip install -r /usr/src/app/requirements.txt
COPY . /usr/src/app
EXPOSE 8080

ENTRYPOINT ["python", "/usr/src/app/model.py", "--server.port=8080", "--server.address=0.0.0.0"]
