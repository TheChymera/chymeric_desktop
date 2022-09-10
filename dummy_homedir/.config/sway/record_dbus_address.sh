#!/bin/sh

touch $HOME/.config/sway/dbus
chmod 600 $HOME/.config/sway/dbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.config/sway/dbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.config/sway/dbus

exit 0
