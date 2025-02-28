output "id" {
  description = "The ID of the EFS file system"
  value       = aws_efs_file_system.this.id
}

output "arn" {
  description = "The ARN of the EFS file system"
  value       = aws_efs_file_system.this.arn
}

output "dns_name" {
  description = "The DNS name of the EFS file system"
  value       = aws_efs_file_system.this.dns_name
}

output "mount_targets" {
  description = "List of mount target IDs created"
  value       = aws_efs_mount_target.this[*].id
}
