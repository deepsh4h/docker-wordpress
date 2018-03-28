FROM mysql:5.7

ADD wordpress.sql /docker-entrypoint-initdb.d