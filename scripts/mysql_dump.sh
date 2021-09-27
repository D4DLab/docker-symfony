#!/bin/sh

#
# This script do backup all mysql databases in serveral files in exists directory
# file name: backup+db_name+date.sql.gz
#

DAY=`date +%d`
MONTH=`date +%m`
YEAR=`date +%Y`

BACKUP_MAIN_DIR="/tmp/db/backups"
BACKUP_DIR="/${BACKUP_MAIN_DIR}/${YEAR}/${MONTH}/${DAY}"

if [ ! -d "${BACKUP_DIR}" ]; then
    mkdir -p ${BACKUP_DIR}
fi

mysql -Ne "show databases" | grep -v "schema\|mysql\|information_schema" | while read db; do mysqldump $db | gzip > "${BACKUP_DIR}/backup_"$db"_$(date +%Y%m%d_%H%M%S).sql.gz"; done
chown 1000:1000 -R ${BACKUP_MAIN_DIR}
