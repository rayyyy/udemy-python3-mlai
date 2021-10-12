FROM python:latest

COPY requirements.txt .
RUN pip3 install --upgrade pip && \
  pip3 install -r requirements.txt && \
  pip install jupyterlab && \
  apt-get update && \
  apt-get install -y git

WORKDIR /app
COPY . /app