java -Xmx256m -XX:NewSize=128m -XX:MaxNewSize=128m -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode  -Dproducer.send-interval-millis=$1 -Dakka.remote.netty.tcp.hostname=$2 -Dakka.remote.netty.tcp.port=$3  -Dakka.cluster.seed-nodes.0=akka.tcp://ClusterSystem@$4 -Dconfig.resource=/$5 -Djava.library.path=./sigar -cp target/scala-2.11/akka-cluster-load-balancing-assembly-1.0.jar kamkor.ProducerApp &
