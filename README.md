# morpheus-workspace

Base repository for Morpheus workspace infrastructure modules

## Getting Started

1. Clone this repository:
```bash
git clone git@github.com:HappyPathway/morpheus-workspace.git
cd morpheus-workspace
```

2. Set up Python environment and install dependencies:
```bash
python -m venv .venv
source .venv/bin/activate  # On Windows use: .venv\Scripts\activate
pip install -r scripts/requirements.txt
```

3. Run the initialization script:
```bash
python scripts/init.py
```

This will:
- Verify Git SSH access to GitHub
- Create the workspace directory structure
- Clone or update all project repositories
- Set up repository configurations

For debugging, you can run:
```bash
python scripts/init.py --debug
```

## Repository Structure

This project consists of multiple repositories:

- terraform-aws-cluster: morpheus-workspace::terraform-aws-cluster
- terraform-aws-efs: morpheus-workspace::terraform-aws-efs
- terraform-aws-mq-cluster: morpheus-workspace::terraform-aws-mq-cluster
- terraform-aws-opensearch-cluster: morpheus-workspace::terraform-aws-opensearch-cluster
- terraform-aws-rds: morpheus-workspace::terraform-aws-rds
- terraform-aws-ses: morpheus-workspace::terraform-aws-ses

## Development Environment

This repository includes:
- VS Code workspace configuration
- GitHub Copilot settings
- Project-specific documentation and guidelines
- Python-based initialization tools

## Contributing

Please see the [CONTRIBUTING.md](.github/CONTRIBUTING.md) file for guidelines.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.89.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_efs_backup_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_backup_policy) | resource |
| [aws_efs_file_system.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_creation_token"></a> [creation\_token](#input\_creation\_token) | Token to ensure idempotent creation of the EFS file system | `string` | n/a | yes |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | Whether to enable encryption for the file system | `bool` | `true` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | ARN of KMS key used to encrypt the file system | `string` | n/a | yes |
| <a name="input_performance_mode"></a> [performance\_mode](#input\_performance\_mode) | Performance mode for the file system (generalPurpose or maxIO) | `string` | `"generalPurpose"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security group IDs to associate with mount targets | `list(string)` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs where mount targets will be created | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to all resources | `map(string)` | `{}` | no |
| <a name="input_throughput_mode"></a> [throughput\_mode](#input\_throughput\_mode) | Throughput mode for the file system (bursting, provisioned, or elastic) | `string` | `"bursting"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where EFS will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the EFS file system |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | The DNS name of the EFS file system |
| <a name="output_id"></a> [id](#output\_id) | The ID of the EFS file system |
| <a name="output_mount_targets"></a> [mount\_targets](#output\_mount\_targets) | List of mount target IDs created |
<!-- END_TF_DOCS -->