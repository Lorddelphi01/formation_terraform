# formation_terraform
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bastion_sg"></a> [bastion\_sg](#module\_bastion\_sg) | ./modules/sg | n/a |
| <a name="module_route_table"></a> [route\_table](#module\_route\_table) | ./modules/route_table | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | ./modules/subnet | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.bastion](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.amz](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.azs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | `""` | no |
| <a name="input_azs"></a> [azs](#input\_azs) | Aws region availability zones | `list(string)` | `[]` | no |
| <a name="input_bastion_ingress_ports"></a> [bastion\_ingress\_ports](#input\_bastion\_ingress\_ports) | Bastion Security group ingress ports | `list(number)` | `[]` | no |
| <a name="input_bastion_instance_type"></a> [bastion\_instance\_type](#input\_bastion\_instance\_type) | The Bastion instance type | `string` | `""` | no |
| <a name="input_enabled_app_rt"></a> [enabled\_app\_rt](#input\_enabled\_app\_rt) | Set to true to enabled reserved web subnet route table creation | `bool` | `true` | no |
| <a name="input_enabled_app_tiers"></a> [enabled\_app\_tiers](#input\_enabled\_app\_tiers) | Set to true to enabled app subnet creation | `bool` | `true` | no |
| <a name="input_enabled_db_tiers"></a> [enabled\_db\_tiers](#input\_enabled\_db\_tiers) | Set to true to enabled db subnet creation | `bool` | `true` | no |
| <a name="input_enabled_nat_gw"></a> [enabled\_nat\_gw](#input\_enabled\_nat\_gw) | Set to true to enabled nat gateway creation | `bool` | `true` | no |
| <a name="input_enabled_reserved_tiers"></a> [enabled\_reserved\_tiers](#input\_enabled\_reserved\_tiers) | Set to true to enabled reserved subnet creation | `bool` | `true` | no |
| <a name="input_enabled_web_rt"></a> [enabled\_web\_rt](#input\_enabled\_web\_rt) | Set to true to enabled reserved web subnet route table creation | `bool` | `true` | no |
| <a name="input_enabled_web_tiers"></a> [enabled\_web\_tiers](#input\_enabled\_web\_tiers) | Set to true to enabled resewebrved subnet creation | `bool` | `true` | no |
| <a name="input_log_destination_type"></a> [log\_destination\_type](#input\_log\_destination\_type) | Vpc flow log Destination | `string` | `"cloud-watch-logs"` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | Aws ClI profile to use | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Aws region | `string` | `""` | no |
| <a name="input_traffic_type"></a> [traffic\_type](#input\_traffic\_type) | Vpc flow log traffic type to capture | `string` | `""` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Vpc CIDR Block | `string` | `""` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Vpc name | `string` | `""` | no |

## Outputs

No outputs.
