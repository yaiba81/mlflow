FROM docker.io/centos/python-36-centos7

USER root

COPY requirements.txt requirements.txt

RUN  pip install -r requirements.txt

EXPOSE 5000

USER 185

CMD /opt/app-root/bin/mlflow ui --host 0.0.0.0
