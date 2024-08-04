############################################################AmazonMQ-Broker - Start######################################################
variable "tags" {
  description = "A map of tags to apply to the resources"
  type        = map(string)
  default     = { "app_name" = "" } <replace your app name here >
}

variable "environment" {
  default = ""
  type    = string
}

variable "project" {
  default = ""
  type    = string

}

variable "region" {
  type    = string
  default = ""
}
variable "location" {
  type    = string
  default = ""
}

#########################################################AmazonMQ-Broker - End################################################################


