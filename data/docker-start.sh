#/bin/bash
echo 'Die Shell wird mit dem folgenden Kommando mit den Docker-Machine Variablen bestückt:  eval $("docker-machine" env)'
echo "Starten von bodata ..."

# eval $("docker-machine" env)
# Kurze Erklärung zu den IP/Port-Adressen:
#  IP-Adresse: 1) Diese Adresse ist vom Host aus erreichbar. Ist das der Host? Nein? Oder?!?
#              2) Ein Port aus dem Container der nach 192.168.99.100:3307 geschleift wird.
# docker run --name bodata  -p 192.168.99.100:3306:3306  -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d  mariadb:latest
# docker run --name bodata2 -p 192.168.99.100:3307:3306  -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d  mariadb:latest

## Skript Parameter: Vorschlaege...
# Container Name???
# BO_CONTAINER='bodata2'

BETOFFICE_PROJECT_ROOT='~/development/projects/betoffice'
BO_CORE="${BETOFFICE_PROJECT_ROOT}/core/betoffice-storage"
BO_CORE_SRC_DATABASE="${BO_CORE}/src/database"

DOCKER_CONTAINER_IP='127.0.0.1'

#mysql -u root -h 192.168.99.101 < $BO_CORE/src/database/mysql_create_prod.sql
#mysql -u root -h 192.168.99.101 < $BO_CORE/src/database/mysql_test_prod.sql

mysql -u root -h ${DOCKER_CONTAINER_IP} << EOF
source $BO_CORE/src/database/mysql_create_prod.sql
source $BO_CORE/src/database/mysql_create_test.sql
EOF

mysql -u betofficesu --password=betoffice -D betoffice -h ${DOCKER_CONTAINER_IP} << EOF
source $BO_CORE/src/database/mysql.sql
EOF

mysql -u testsu --password=test -D botest -h ${DOCKER_CONTAINER_IP} << EOF
source $BO_CORE/src/database/mysql.sql
EOF
