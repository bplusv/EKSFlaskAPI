FROM python:3.7.9-stretch

WORKDIR /app
COPY requirements.txt .
COPY main.py .

RUN pip install -r requirements.txt

EXPOSE 8080
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
