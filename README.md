# gcp

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.10.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.83.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.15.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | 6.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.aws"></a> [aws.aws](#provider\_aws.aws) | 5.83.1 |
| <a name="provider_google.google-priv"></a> [google.google-priv](#provider\_google.google-priv) | 6.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.rules](https://registry.terraform.io/providers/hashicorp/google/6.15.0/docs/resources/compute_firewall) | resource |
| [google_compute_instance.test](https://registry.terraform.io/providers/hashicorp/google/6.15.0/docs/resources/compute_instance) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/6.15.0/docs/resources/compute_network) | resource |
| [aws_ssm_parameter.gcp_priv](https://registry.terraform.io/providers/hashicorp/aws/5.83.1/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"eu-central-1"` | no |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | n/a | `string` | `"europe-west1"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `"priv"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
