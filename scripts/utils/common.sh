#!/bin/bash

## Directory Definitions
DIR_CURRENT=$( pwd )
DIR_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd "../../" && pwd )";
DIR_SCRIPTS="$( cd $DIR_ROOT && cd "scripts" && pwd )";
DIR_INSTANCE="$( cd $DIR_ROOT && cd "aem" && pwd )";

## AEM JAR Directory definitions
# -- update as needed for local environments
DIR_AEM_JAR="/Users/chadwhiting/aem/jars"
AEM_JAR_6_4="$DIR_AEM_JAR/6.4/aem-quickstart-6.4.jar";
AEM_JAR_6_3="$DIR_AEM_JAR/6.3/aem-quickstart-6.3.jar";
AEM_JAR_6_2="$DIR_AEM_JAR/6.2/aem-quickstart-6.2.jar";
AEM_JAR_6_1="$DIR_AEM_JAR/6.1/aem-quickstart-6.1.jar";
AEM_JAR_6_0="$DIR_AEM_JAR/6.0/aem-quickstart-6.0.jar";
AEM_JAR_5_6_1="$DIR_AEM_JAR/5.6.1/aem-quickstart-5.6.1.jar";

## Startup Command Generation
HEAP_SIZE="2g";
HEAP_OPTS="-Xms$HEAP_SIZE -Xmx$HEAP_SIZE";
JVM_OPTS="-server $HEAP_OPTS";

source "$DIR_SCRIPTS/utils/flags.sh"
source "$DIR_SCRIPTS/utils/runmodes.sh"
