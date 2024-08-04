Introduction :

This Terraform module provisions the following resources:

ActiveMQ broker with SINGLE_INSTANCE.
You can change it to ACTIVE_STANDBY in the local.tf file if your requirement is an ACTIVE_STANDBY broker.

Please refer to the CloudPosse module for inputs and outputs as this code was created with the motivation and help from CloudPosse:

CloudPosse MQ Broker Module

https://registry.terraform.io/modules/cloudposse/mq-broker/aws/latest

Purpose:

The purpose of this module is to simplify and provide a unique Terraform Infrastructure as Code (IAC) solution for Amazon MQ with Secret Manager integration for username and password.

Usage:
Please use the local.tf file to provide the necessary inputs. It is not expected that inputs will be given in any other .tf files, including variables.tf.

For example, from the below code line , the value of ActiveMQ  will provision the ActiveMQ engine in Amazon MQ. If you need RabbitMQ, you will need to change this accordingly 

+++++++++++++
mq_broker_engine_type = "ActiveMQ"
+++++++++++++
All suggestions to improve or enhance this module are welcome.

