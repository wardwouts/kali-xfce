#!/bin/sh

mkdir -p /run/sshd

# workaround for dbus
dbus-uuidgen > /var/lib/dbus/machine-id
# start services
/usr/bin/supervisord -c /supervisord.conf
# open a shell
/bin/bash
