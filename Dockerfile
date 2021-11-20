FROM debian
EXPOSE 8080

RUN sudo apt-get update
RUN sudo apt-get -y upgrade
RUN wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add -
RUN sudo apt install gnupg2 -y
RUN echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
RUN sudo apt update
RUN sudo apt install -y net-tools dphys-swapfile
RUN sudo apt -y install 3cxpbx
RUN echo "\
     hello\
     world"
