#! /bin/sh

runPath=`pwd`

export LD_LIBRARY_PATH=$runPath/lib:/usr/local/lib:$runPath/lib/freeswitch/mod:$LD_LIBRARY_PATH


#$runPath/bin/freeswitch -nonat -base $runPath -conf $runPath/etc/freeswitch -log /data/t3-logs/freeswitch/ -db $runPath/var/lib/freeswitch/db -mod $runPath/lib/freeswitch/mod -recordings $runPath/recordings 

while [ 1 ]
do
        count=`ps -ef | grep "freeswitch" |grep -v grep |wc -l`
        if [ 0 == $count ]
        then
                echo "start process....."
                $runPath/bin/freeswitch -nonat -base $runPath -conf $runPath/etc/freeswitch -log /data/t3-logs/freeswitch/ -db $runPath/var/lib/freeswitch/db -mod $runPath/lib/freeswitch/mod -recordings $runPath/recordings 
        else
                echo "runing....."
        fi
        sleep 5
done
