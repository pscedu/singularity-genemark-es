#!/bin/bash
VERSION=4.65
PACKAGE=genemark-es
TOOL=change_path_in_perl_scripts.pl
DIRECTORY=$(dirname $0)

if [ $HOSTNAME == 'workshop.bil.psc.edu' ]; then
        STORAGES=(/ocean /hive /local)
else
    	STORAGES=(/ocean /bil /hive /local)
fi

OPTIONS=""
for STORAGE in "${STORAGES[@]}"
do
  	if [ -d "$STORAGE" ]; then
                OPTIONS=$OPTIONS" -B $STORAGE"
        fi
done

singularity exec $OPTIONS $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"
