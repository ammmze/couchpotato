#!/bin/bash
umask 000

usermod -u $USER_ID nobody
usermod -g $GROUP_ID nobody
chown -R nobody:users /opt/couchpotato /config

exec /sbin/setuser nobody python /opt/couchpotato/CouchPotato.py --config_file=/config/config.ini --data_dir=/config/data
