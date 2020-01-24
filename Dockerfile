FROM docker.io/centos/python-36-centos7

USER root

RUN  pip install -r requirements.txt
COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000
USER 185
ENTRYPOINT ["/etc/entrypoint.sh"]
