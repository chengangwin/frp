FROM centos:7
ADD frpc /bin/frpc
ADD frps /bin/frps
ADD frpc.ini /frpc.ini
ADD frps.ini /frps.ini
ADD start.sh /start.sh

RUN chmod 777 /start.sh
RUN chmod 777 /bin/frps
RUN chmod 777 /bin/frpc


EXPOSE 7000 7500 80 443

#ENTRYPOINT ["/start.sh"]
CMD /bin/frps -c /frps.ini
