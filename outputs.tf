output "broker_id" {
  description = "AmazonMQ broker ID"
  value       = module.mq_broker_cbs_nonprod.broker_id
}

output "broker_arn" {
  description = "AmazonMQ broker ARN"
  value       = module.mq_broker_cbs_nonprod.broker_arn
}

output "primary_console_url" {
  description = "AmazonMQ active web console URL"
  value       = module.mq_broker_cbs_nonprod.primary_console_url
}

output "admin_username" {
  description = "AmazonMQ admin username"
  value       = module.mq_broker_cbs_nonprod.admin_username
  sensitive = true
}

output "application_username" {
  description = "AmazonMQ application username"
  value       = module.mq_broker_cbs_nonprod.application_username
}
