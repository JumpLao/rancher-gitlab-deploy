FROM python:3.6-alpine
ADD . /rancher-gitlab-deploy
WORKDIR /rancher-gitlab-deploy
RUN python3 /rancher-gitlab-deploy/setup.py install
RUN ln -s /usr/local/bin/rancher-gitlab-deploy /usr/local/bin/upgrade
CMD rancher-gitlab-deploy
