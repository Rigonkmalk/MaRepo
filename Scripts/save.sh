#!/bin/bash

REP='/etc/'

CIBLE='/home/iut/sauvegarde/'

DEST='/var/backups'

cp -r `find $REP -mtime 0` $CIBLE

cd $DEST

tar -cf save-etc-`date +%Y-%m-%d`.tar.gz $CIBLE

cd /home/iut/

echo "#####################################"
echo "#		Copie terminé	    #"
echo "#####################################"
