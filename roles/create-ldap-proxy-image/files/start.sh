#!/bin/bash
 
TOPDIR=$(dirname $0)
cd $TOPDIR && TOPDIR=$PWD
 
# Generate certificates if not existing
DESTDIR="$TOPDIR/data/certs"
APP_FQDN=$(hostname -f)
 
[[ -d $DESTDIR ]] || mkdir -p $DESTDIR
 
APP_GEN_CERT='openssl req -x509 -nodes -days 365 -newkey rsa:2048'
APP_GEN_CERT="$APP_GEN_CERT -keyout $DESTDIR/ldap.key -out $DESTDIR/ldap.crt"
APP_GEN_CERT="$APP_GEN_CERT -subj '/CN=$APP_FQDN/OU=Cloud/O=Sadad/L=Tehran/ST=Tehran/C=IR'"
APP_GEN_CERT="[[ -f $DESTDIR/ldap.crt ]] || $APP_GEN_CERT"
 
# This command gets a parameter or some parameter and then runs all of them in a line as command in shell.
eval $APP_GEN_CERT
 
# Run docker-compose command
exec "$@"

