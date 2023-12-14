
FROM python:3.9-slim

WORKDIR /app

RUN  apt-get update

COPY . /app

RUN pip install flask
EXPOSE 8000

ENV FLASK_APP=test.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]

