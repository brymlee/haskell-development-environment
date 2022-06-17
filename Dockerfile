FROM docker.io/ubuntu:kinetic
RUN apt update
RUN apt install podman vim git curl wget -y
RUN curl -sSL https://get.haskellstack.org/ | bash
RUN stack setup 9.0.1
WORKDIR root
COPY .vimrc .vimrc
CMD ["/usr/bin/vim"]
