FROM docker.io/centos/python-36-centos7

USER root

RUN  pip install mlflow==1.5.0 && pip install awscli
COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000
USER 185
ENTRYPOINT ["/etc/entrypoint.sh"]
