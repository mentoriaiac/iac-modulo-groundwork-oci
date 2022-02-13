## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_groundwork"></a> [groundwork](#module\_groundwork) | ../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | Fingerprint gerado pela OCI no usuário de comunicação | `string` | n/a | yes |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | Caminho para chave privada que será usada na OCI | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Região onde os recursos serão criados | `string` | n/a | yes |
| <a name="input_root_compartment_id"></a> [root\_compartment\_id](#input\_root\_compartment\_id) | ID do compartment pai onde o nosso compartment será criado | `string` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | ID do Tenancy da OCI | `string` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | ID do usuário para comunicação com OCI | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | n/a |
| <a name="output_vcn_cidr"></a> [vcn\_cidr](#output\_vcn\_cidr) | n/a |
