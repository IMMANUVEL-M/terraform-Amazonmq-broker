variable "mq_broker_namespace" {
  description = "ID element. Usually an abbreviation of an organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique"
  type        = string
  default     = ""
}
variable "mq_broker_environment" {
  description = "Dev Environment"
  type        = string
  default     = ""
  }
variable "mq_broker_stage" {
  description = "ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release'"
  type        = string
  default     = ""
}
variable "mq_broker_name" {
  description = "ID element. Usually the component or solution name"
  type        = string
  default     = ""
}
variable "mq_broker_apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window"
  type        = bool
  default     = null
}
variable "mq_broker_auto_minor_version_upgrade" {
  description = "Whether to automatically upgrade minor versions."
  type        = bool
  default     = null
}
variable "mq_broker_deployment_mode" {
  description = "The deployment mode of the broker"
  type        = string
  default     = ""
}

variable "mq_broker_username" {
  description = "The username for the Amazon MQ broker"
  type        = string
  default     = ""
}

variable "mq_broker_password" {
  description = "The password for the Amazon MQ broker"
  type        = string
  default     = ""
}
variable "mq_broker_engine_type" {
  description = "Type of broker engine, `ActiveMQ` or `RabbitMQ`"
  type        = string
  default     = ""
}
variable "mq_broker_engine_version" {
  description = "The version of the broker engine"
  type        = string
  default     = ""
}
variable "mq_broker_host_instance_type" {
  description = "The broker's instance type. e.g. mq.t2.micro or mq.m4.large"
  type        = string
  default     = ""
}
variable "mq_broker_publicly_accessible" {
  description = "Whether the broker should be publicly accessible outside of VPC."
  type        = bool
  default     = null
}
variable "mq_broker_general_log_enabled" {
  description = "Enable general logging."
  type        = bool
  default     = null
}
variable "mq_broker_audit_log_enabled" {
  description = "Enable audit logging."
  type        = bool
  default     = null
}
variable "mq_broker_encryption_enabled" {
  description = "Flag to enable/disable Amazon MQ encryption at rest"
  type        = bool
  default     = null
}

variable "mq_broker_vpc_id" {
  description = "The VPC ID where the MQ broker will be deployed"
  type        = string
  default     = ""
}

variable "mq_broker_subnet_ids" {
  description = "List of subnet IDs for the MQ broker"
  type        = list(string)
  default     = []
}

#variable "secret_name" {
 # description = "The name of the secret in AWS Secrets Manager"
  #type        = string
#}


variable "mq_broker_maintenance_day_of_week" {
  description = "The day of the week maintenance window is set."
  type        = string
  default     = ""
}

variable "mq_broker_maintenance_time_of_day" {
  description = "The time of day maintenance window starts."
  type        = string
  default     = ""
}

variable "mq_broker_maintenance_time_zone" {
  description = "The time zone of the maintenance window."
  type        = string
  default     = ""
}

variable "mq_broker_admin_username" {
  type        = list(string)
  description = "Admin username"
  default     = []
}

variable "mq_broker_admin_password" {
  type        = list(string)
  description = "Admin password"
  default     = []
  sensitive   = true
}

variable "mq_application_user" {
  type        = list(string)
  description = "Application username"
  default     = []
}

variable "mq_broker_kms_ssm_key_arn" {
  type        = string
  description = "ARN of the AWS KMS key used for SSM encryption"
  default     = ""
}
variable "mq_broker_kms_mq_key_arn" {
  type        = string
  description = "ARN of the AWS KMS key used for Amazon MQ encryption"
  default     = null
}

variable "mq_broker_use_aws_owned_key" {
  type        = bool
  description = "Boolean to enable an AWS owned Key Management Service (KMS) Customer Master Key (CMK) for Amazon MQ encryption that is not in your account"
  default     = null
}
variable "mq_broker_associated_security_group_ids" {
  description = "A list of security group IDs to associate with the Amazon MQ broker"
  type        = list(string)
  #default     = ""
}

variable "mq_broker_create_security_group" {
  description = "Whether to create a new security group for the Amazon MQ broker"
  type        = bool
  default     = null
}

variable "tags" {
  description = "A map of mq_broker tags to add "
  type        = map(string)
  default     = {}
}


