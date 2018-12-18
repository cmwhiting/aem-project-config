#!/bin/bash

# Limited set of AEM startup flags
# For full list, see: https://helpx.adobe.com/experience-manager/6-4/sites/deploying/using/custom-standalone-install.html

# Show GUI if running on a terminal 
FLAG_GUI="-gui"

# Do not open the browser on startup
FLAG_NO_BROWSER="-nobrowser"

# Do not fork the JVM, even if not running on a console
FLAG_NO_FORK="-nofork"

# Force forking the JVM if running on a console, using recommended default memory settings for the forked JVM.
FLAG_FORK="-fork"

# <args> [<args> ...]
# Additional arguments for the forked JVM, 
# defaults to '-Xmx1024m -XX:MaxPermSize=256m '.  
# Use -- to specify values starting with -, example: '-forkargs -- -server'
FLAG_FORKARGS="-forkargs"

# <level>
# Define launchpad log level (1 = error...4 = debug)
FLAG_LL="-ll"

# -debug <port>
# Enable Java Debugging on port number; forces forking 
FLAG_DEBUG="-debug"

FLAG_STANDARD_LOCAL="$FLAG_NO_FORK $FLAG_GUI $FLAG_NO_BROWSER";
