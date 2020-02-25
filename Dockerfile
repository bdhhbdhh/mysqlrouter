FROM centos:7

ENV MYSQLROUTER_VERSION 2.1.6

RUN curl -O https://cdn.mysql.com/archives/mysql-router/mysql-router-$MYSQLROUTER_VERSION-1.el7.x86_64.rpm && \
    rpm -ivh /mysql-router-$MYSQLROUTER_VERSION-1.el7.x86_64.rpm && \
	  rm -f mysql-router-$MYSQLROUTER_VERSION-1.el7.x86_64.rpm

CMD ["mysqlrouter"]
