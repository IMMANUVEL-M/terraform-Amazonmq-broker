module "mq_broker_nonprod" {
  source                     = "./skeleton"
  mq_broker_namespace                  = local.mq_broker_namespace
  mq_broker_stage                      = local.mq_broker_environment
  mq_broker_name                       = local.mq_broker_name
  mq_broker_apply_immediately          = local.mq_broker_apply_immediately
  mq_broker_auto_minor_version_upgrade = local.mq_broker_auto_minor_version_upgrade
  mq_broker_deployment_mode            = local.mq_broker_deployment_mode
  mq_broker_engine_type                = local.mq_broker_engine_type
  mq_broker_engine_version             = local.mq_broker_engine_version
  mq_broker_host_instance_type         = local.mq_broker_host_instance_type
  mq_broker_publicly_accessible        = local.mq_broker_publicly_accessible
  mq_broker_general_log_enabled        = local.mq_broker_general_log_enabled
  mq_broker_audit_log_enabled          = local.mq_broker_audit_log_enabled
  mq_broker_encryption_enabled         = local.mq_broker_encryption_enabled
  mq_broker_use_aws_owned_key          = local.mq_broker_use_aws_owned_key
  mq_broker_vpc_id                     = local.mq_broker_vpc_id
  mq_broker_subnet_ids                 = local.mq_broker_subnet_ids
 #mq_broker_allowed_security_group_ids = local.mq_broker_allowed_security_group_ids
  mq_broker_admin_username             = [local.mq_broker_admin_username]
  mq_broker_admin_password             = [local.mq_broker_admin_password]
  mq_broker_kms_mq_key_arn             = local.mq_broker_kms_mq_key_arn
  mq_broker_kms_ssm_key_arn            = local.mq_broker_kms_ssm_key_arn
  mq_broker_create_security_group      = local.mq_broker_create_security_group
  mq_broker_associated_security_group_ids=local.mq_broker_associated_security_group_ids
  mq_broker_maintenance_day_of_week    = local.mq_broker_maintenance_day_of_week
  mq_broker_maintenance_time_of_day    = local.mq_broker_maintenance_time_of_day
  mq_broker_maintenance_time_zone      = local.mq_broker_maintenance_time_zone
  #tags                                 = local.mq_broker_tags

  tags  = merge(
    local.mq_broker_tags,
    var.tags
  )
 
 
}
