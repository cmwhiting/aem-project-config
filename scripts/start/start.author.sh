#!/bin/bash

source ../scripts/utils/common.sh

## Command Options
PORT_NUMBER="4502"
RUNMODES="author,$RUNMODE_STANDARD_LOCAL"

CMD="java $JVM_OPTS -jar $AEM_JAR_6_4 $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER"

cd $DIR_INSTANCE
cd "author"
$CMD
cd $CURRENT_DIR
