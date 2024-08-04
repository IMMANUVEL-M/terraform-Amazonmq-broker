#### AmazonMQ-Broker - Start ####
locals {
  mq_broker_namespace                  = "cp"
  mq_broker_name_suffix                = "aws-${var.location}-${var.project}-${var.environment}"
  mq_broker_name                       = "${local.mq_broker_name_suffix}-mq-broker-001"
  mq_broker_apply_immediately          = false
  mq_broker_auto_minor_version_upgrade = false
  mq_broker_environment                = "$var.environment" 
  mq_broker_create_security_group      = false
  mq_broker_deployment_mode            = "SINGLE_INSTANCE"
  mq_broker_engine_type                = "ActiveMQ"
  mq_broker_engine_version             = "5.17.6"
  mq_broker_host_instance_type         = "mq.m5.large" #You can Replace the instance type here as per your requirement 
  mq_broker_publicly_accessible        = false
  mq_broker_general_log_enabled        = true
  mq_broker_audit_log_enabled          = true
  mq_broker_encryption_enabled         = true
  mq_broker_use_aws_owned_key          = false
  mq_broker_maintenance_day_of_week    = "" #You can provide  your preferred day of the week
  mq_broker_maintenance_time_of_day    = "" #You can provide  your preferred time of the day
  mq_broker_maintenance_time_zone      = "" #You can provide  your preferred time_zone
  mq_broker_vpc_id                     = data.aws_vpc.vpc_details.id
  mq_broker_subnet_ids                 = [data.aws_subnet.webapp_subnet_a.id] #this value will be depends_on deployment mode
  mq_broker_associated_security_group_ids = data.aws_security_groups.associated.ids
  secret_data                          = jsondecode(data.aws_secretsmanager_secret_version.secret_details.secret_string)
  mq_broker_admin_username             = local.secret_data["admin_user_name"]
  mq_broker_admin_password             = local.secret_data["admin_password"]
  #mq_broker_admin_username            = jsondecode(data.aws_secretsmanager_secret_version.secret_details_version.secret_string)["admin_user_name"]
  #mq_broker_admin_password            = jsondecode(data.aws_secretsmanager_secret_version.secret_details_version.secret_string)["admin_password"]  
  use_aws_owned_key                    = "false" 
  mq_application_user                  = "" #You can provide  your preferred username 
  

  mq_broker_tags  = {
    resource_name     = "aws-sg-dev-amazonmq-mq_broker-001"
    resource_type     = "mq_broker"
    description       = "This is for mq-broker specific tag" 
  }
     
}


#### AmazonMQ-Broker - End ####
