#!/bin/bash

source ./scripts/utils/common.sh

## Command Options
PORT_NUMBER="4502"
RUNMODES="author,$RUNMODE_STANDARD_LOCAL"

cd $DIR_INSTANCE
cd ./author
echo "java $JVM_OPTS -jar $AEM_JAR_6_4 $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER"
cd $CURRENT_DIR
