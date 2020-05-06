#!/bin/bash
WS_JSON=$(i3-msg -t get_workspaces)
for i in {1..10} ; do
    if [[ $WS_JSON != *"\"num\":$i"* ]] ; then
        i3-msg workspace number $i
        break
    fi
done
