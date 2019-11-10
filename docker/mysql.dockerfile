FROM mysql:latest
MAINTAINER Carlos Augusto
COPY docker/config/mysql.cnf /etc/mysql/conf.d/mysql.cnf
command: ['--character-set-server=utf8mb4', '--collation-server=utf8mb4_unicode_ci','--default-authentication-plugin=mysql_native_password']