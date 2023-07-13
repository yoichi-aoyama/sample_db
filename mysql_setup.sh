#!/bin/sh

set -e

# db user
docker-compose exec mysql mysql -e "CREATE USER 'root'@'%'"
docker-compose exec mysql mysql -e "GRANT ALL ON *.* to 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
docker-compose exec mysql mysql -e "CREATE USER 'writer'@'%' IDENTIFIED BY 'writer'"
docker-compose exec mysql mysql -e "GRANT SELECT,INSERT,UPDATE,DELETE ON *.* TO 'writer'@'%';"
docker-compose exec mysql mysql -e "CREATE USER 'reader'@'%' IDENTIFIED BY 'reader';"
docker-compose exec mysql mysql -e "GRANT SELECT ON *.* TO 'reader'@'%';"

# db
docker-compose exec mysql mysql -e "CREATE DATABASE IF NOT EXISTS sample_db DEFAULT character set utf8mb4"

