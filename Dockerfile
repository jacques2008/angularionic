FROM ubuntu:18.04

COPY initialize-node.sh /
COPY initialize-angualar-ionic.sh /
RUN chmod a+x /initialize-node.sh
RUN chmod a+x /initialize-angualar-ionic.sh
RUN bash /initialize-node.sh
COPY sshd_config /etc/ssh/sshd_config
RUN sudo sh -c 'echo root:password | chpasswd'
RUN bash /initialize-angualar-ionic.sh
RUN apt-get clean -y

EXPOSE 4200 3000 80 22
ENTRYPOINT ["/bin/bash"]
