#!/bin/bash

set -x

java8 -cp lib/*:kafkaoperator-0.2.3.jar  -Dlog4j.configurationFile=file:./log4j2.xml  \
      com.nholuongut.doctorkafka.DoctorKafkaMain server config.yaml