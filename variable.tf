variable "linode_token" {
  description = "Linode API token"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Linode region"
  type        = string
  default     = "us-central"
}

variable "instance_type" {
  description = "Linode instance type"
  type        = string
  default     = "g6-standard-1"
}

variable "root_password" {
  description = "Root password for the instances"
  type        = string
  sensitive   = true
}

variable "instance_count" {
  description = "Number of instances"
  type        = number
  default     = 1
}

