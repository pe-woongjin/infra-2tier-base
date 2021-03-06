# ######################
# COMMON
# ######################
variable "team_name" {
  description = "team name of DevOps"
  type = string
  default = "PE"
}

variable "service_name" {
  description = "name of service"
  type = string
  default = "ming-2t"
}

variable "service_version" {
  description = "version of service"
  type = string
  default = "0.1"
}

variable "environment" {
  description = "Runtime Environment such as default, develop, stage, production"
  type = string
  default = "prd"
}

variable "region_nm" {
  description = "aws region alias"
  type = string
  default = "apne2"
}

locals {
  resrc_prefix_nm = "${var.service_name}-${var.region_nm}-${var.environment}"
}


# ######################
# Output
# ######################
# vpc
variable "vpc_id" {
  description = "vpc id"
  type = string
}

# public subnet ids
variable "pub_sn_ids" {
  description = "public subnet ids"
  type = list(string)
}