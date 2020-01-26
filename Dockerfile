FROM docker.io/centos/python-36-centos7

USER root

RUN yum install libaio

RUN yum install https://download.oracle.com/otn_software/linux/instantclient/195000/oracle-instantclient19.5-basiclite-19.5.0.0.0-1.x86_64.rpm

COPY requirements.txt requirements.txt

RUN  pip install -r requirements.txt

EXPOSE 5000

USER 185

CMD /opt/app-root/bin/mlflow ui --host 0.0.0.0
