#!/bin/bash
HOST='serverftp'
USER='userftp'
PASS='passwordftp'
TARGETFOLDER='/'
SOURCEFOLDER='/backup'

lftp -f "
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror --reverse --delete --verbose --exclude index.php --exclude-glob .bash* --exclude-glob *.log $SOURCEFOLDER $TARGETFOLDER
bye
"