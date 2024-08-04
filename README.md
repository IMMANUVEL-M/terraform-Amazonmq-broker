Introduction:
This module provisions the following resources:

ActiveMQ broker with SINGLE_INSTANCE 

You can change it to ACTIVE_STANDBY in the local.tf file if your requirement is ACTIVE_STANDBY  broker

Please refer the cloudpose module for inputs and Outputs as this code was created wuth the motivaton and help from cloudpose 

https://registry.terraform.io/modules/cloudposse/mq-broker/aws/latest

Purpose :

The purpose of the code is to simplify and provide a unique terraform IAC for amazonMQ with secretmanager integration for username and password 

Usage : 

Please use the local.tf to provide the inputs and it is not expected the inputs to be given in any other .tf files including variables.tf

For Example below value of "ActiveMQ" will provision the ActiveMQ engine in the Amazon MQ and if you need RabbitMQ , you need to change  this accordingly
mq_broker_engine_type                = "ActiveMQ"

All the suggestions are welcomes to improvise  or enhance further 




