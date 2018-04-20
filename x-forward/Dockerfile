FROM debian:latest

# install packages
RUN apt-get update
RUN apt-get install -qy \
  x11-apps \
  vim-gtk3 \
  rxvt-unicode \
  firefox-esr

# create dev user
RUN groupadd -g 1000 -r dev \
  && useradd -u 1000 -r -g dev -G audio,video dev \
  && mkdir -p /home/dev \
  && chown -R dev:dev /home/dev \
  && echo "dev ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
  && chmod 0440 /etc/sudoers \
  && passwd -d root

# default shell
ENV SHELL /bin/bash

# login as dev
USER dev
ENV HOME /home/dev

# execute gui program
# CMD firefox-esr
