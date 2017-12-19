# JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

# add local binaries to PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH

# Oracle Instant Client
# https://help.ubuntu.com/community/Oracle%20Instant%20Client
ORACLE_VERSION=12.2
export ORACLE_HOME=/usr/lib/oracle/$ORACLE_VERSION/client64
export PATH=$PATH:$ORACLE_HOME/bin
export LD_LIBRARY_PATH=/usr/lib/oracle/$ORACLE_VERSION/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export TNS_ADMIN=/home/andrew/setup

