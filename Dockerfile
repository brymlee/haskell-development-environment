FROM docker.io/haskell:buster
RUN apt-get update 
RUN apt-get install git vim -y
WORKDIR /root
COPY .vimrc .vimrc 
CMD ["/usr/bin/vim"]
