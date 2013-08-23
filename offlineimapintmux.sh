#!/bin/zsh

OFFLINEPID=$(cat ~/.offlineimap/pid)

kill -SIGUSR1 $OFFLINEPID
