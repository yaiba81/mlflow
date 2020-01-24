FROM python:3

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

CMD mlflow ui
