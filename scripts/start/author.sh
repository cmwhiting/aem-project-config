#!/bin/bash

DIR_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd );
source $DIR_ROOT/utils/common.sh

## Command Options
PORT_NUMBER="4502"
RUNMODES="author,$RUNMODE_STANDARD_LOCAL"

CMD="java $JVM_OPTS -jar $AEM_JAR_6_2 $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER"

cd "author"
$CMD
cd $DIR_CURRENT