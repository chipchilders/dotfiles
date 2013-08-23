#!/bin/bash
# Set maildirs
maildirs="$HOME/.mail/sungard.com/INBOX/new/"

find $maildirs -type f | wc -l | tr -d " "
