#!/bin/bash

set -x

#  -verbose
#       -Dorg.apache.logging.log4j.simplelog.StatusLogger.level=TRACE \
#  datakafka01163

java8  \
       -cp target/lib/*:target/kafkastats-0.1.0.jar \
       -Dlog4j.configurationFile=file:./config/log4j2.xml  \
        com.nholuongut.doctorkafka.stats.KafkaStatsMain \
         -broker localhost -jmxport 9999 \
         -topic brokerstats  -zookeeper zookeeper01:2181 \
         -tsdhostport localhost:18126  -ostrichport 2052 \
         -uptimeinseconds 3600  -pollingintervalinseconds 15

