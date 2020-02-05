#! /bin/sh
# command to destroy all powered off boxes
#     -> vagrant will still ask for delete confirmation
#
# Main purpose was to free up space
# !!! Use with caution !!!
# Just change the grep expression if you need another criteria of deletion

vagrant destroy $(vagrant global-status | grep -e poweroff | awk '{print $1}' )