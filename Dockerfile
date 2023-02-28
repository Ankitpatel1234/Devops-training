FROM python:3.8-alpine
WORKDIR /usr/src/app
COPY main.py .
CMD ["python", "./main.py"]
