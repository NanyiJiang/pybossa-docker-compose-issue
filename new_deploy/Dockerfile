FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y python-pip redis-server
RUN apt-get install -y git
RUN git clone --depth 1 --recursive https://github.com/Scifabric/pybossa /opt/pybossa
WORKDIR /opt/pybossa
RUN apt-get install -y libjpeg-dev zlib1g-dev
RUN apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev
RUN pip install -r requirements.txt

RUN pip install honcho

RUN apt-get install -y vim

COPY Procfile Procfile
COPY settings_local.py settings_local.py
COPY alembic.ini alembic.ini
COPY start.sh start.sh

CMD sh start.sh

EXPOSE 5555
