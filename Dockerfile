FROM jupyter/base-notebook:33add21fab64
LABEL author="Nithish Raghunandanan"
USER root
RUN apt update && apt -y install build-essential libssl-dev libffi-dev python3-dev python3-pip python3-setuptools cmake git-all
RUN pip install couchbase
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
COPY notebooks /home/jovyan/work/notebooks