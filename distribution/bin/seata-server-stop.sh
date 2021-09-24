#/bin/bash
pid=`ps -auxww | grep seata-server.jar  | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ] ;then
   kill -9 $pid
   sleep 5
   echo  "关闭 $pid"
fi
echo "seata-server关闭成功"

