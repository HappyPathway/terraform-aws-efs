variable "creation_token" {
  description = "Token to ensure idempotent creation of the EFS file system"
  type        = string
}

variable "performance_mode" {
  description = "Performance mode for the file system (generalPurpose or maxIO)"
  type        = string
  default     = "generalPurpose"
}

variable "throughput_mode" {
  description = "Throughput mode for the file system (bursting, provisioned, or elastic)"
  type        = string
  default     = "bursting"
}

variable "encrypted" {
  description = "Whether to enable encryption for the file system"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "ARN of KMS key used to encrypt the file system"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where EFS will be created"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where mount targets will be created"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs to associate with mount targets"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}
