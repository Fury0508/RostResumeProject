FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt
COPY app/ /app/

RUN pip install -r requirements.txt

CMD [ "/bin/sh","-c", "python -m app.main" ]
