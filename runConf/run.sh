#! /bin/sh

runPath=`pwd`

export LD_LIBRARY_PATH=$runPath/lib:/usr/local/lib:$runPath/lib/freeswitch/mod:$LD_LIBRARY_PATH


#$runPath/bin/freeswitch  -base $runPath -conf $runPath/etc/freeswitch -log $runPath/var/log -db $runPath/var/lib/freeswitch/db -mod $runPath/lib/freeswitch/mod
$runPath/bin/freeswitch -nonat -base $runPath -conf $runPath/etc/freeswitch -log $runPath/var/log -db $runPath/var/lib/freeswitch/db -mod $runPath/lib/freeswitch/mod -recordings $runPath/recordings
