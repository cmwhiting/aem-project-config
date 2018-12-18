#!/bin/bash

sh ./scripts/utils/common.sh

## Command Options
PORT_NUMBER="4503"
RUNMODES="publish,$RUNMODE_STANDARD_LOCAL"

cd $INSTANCE_DIR
cd ./publish
java $JVM_OPTS -jar $AEM_JAR $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER
cd $CURRENT_DIR
