module "mq_broker" {
  # source = "git@ssh.dev.azure.com:terraform-aws-mq-broker?ref=v3.4.0"  #You can also use your source here if available 
  #ref link https://registry.terraform.io/modules/cloudposse/mq-broker/aws/latest
  #source                     = "cloudposse/mq-broker/aws"
  version                    = "3.4.0"
  namespace                  = var.mq_broker_namespace
  stage                      = var.mq_broker_stage
  name                       = var.mq_broker_name
  apply_immediately          = var.mq_broker_apply_immediately
  auto_minor_version_upgrade = var.mq_broker_auto_minor_version_upgrade
  deployment_mode            = var.mq_broker_deployment_mode
  engine_type                = var.mq_broker_engine_type
  engine_version             = var.mq_broker_engine_version
  host_instance_type         = var.mq_broker_host_instance_type
  publicly_accessible        = var.mq_broker_publicly_accessible
  general_log_enabled        = var.mq_broker_general_log_enabled
  audit_log_enabled          = var.mq_broker_audit_log_enabled
  encryption_enabled         = var.mq_broker_encryption_enabled
  vpc_id                     = var.mq_broker_vpc_id
  subnet_ids                 = var.mq_broker_subnet_ids
  #allowed_security_group_ids= var.mq_broker_allowed_security_group_ids
  mq_admin_user              = var.mq_broker_admin_username
  mq_admin_password          = var.mq_broker_admin_password 
  mq_application_user        = var.mq_application_user
  use_aws_owned_key          = var.mq_broker_use_aws_owned_key
  maintenance_day_of_week    = var.mq_broker_maintenance_day_of_week
  maintenance_time_of_day    = var.mq_broker_maintenance_time_of_day
  maintenance_time_zone      = var.mq_broker_maintenance_time_zone
  kms_ssm_key_arn            = var.mq_broker_kms_ssm_key_arn
  kms_mq_key_arn             = var.mq_broker_kms_mq_key_arn
  create_security_group      = var.mq_broker_create_security_group
  associated_security_group_ids = var.mq_broker_associated_security_group_ids
  tags                       = var.tags
  #tags  = merge(
  #  local.mq_broker_tags,
  #  var.tags
  #)

 

}

