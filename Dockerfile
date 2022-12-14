FROM python:3.8

RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser

COPY check.py /check.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]