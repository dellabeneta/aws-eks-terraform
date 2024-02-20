<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.eks_managed_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.nodegroup_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.nodegroup_role_attachment_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.nodegroup_role_attachment_ecr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.nodegroup_role_attachment_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nome do CLuster EKS | `string` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Valor desejado de Nodes | `number` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Tipo da instancia que sera usada para criacao dos Nodes | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Valor maximo de Nodes | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Valor minimo de Nodes | `number` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto que pode ser usado nas tags de nome (Name tag) | `string` | n/a | yes |
| <a name="input_subnet_private_1a"></a> [subnet\_private\_1a](#input\_subnet\_private\_1a) | Sub-rede para criar o Node na AZ 1a | `string` | n/a | yes |
| <a name="input_subnet_private_1b"></a> [subnet\_private\_1b](#input\_subnet\_private\_1b) | Sub-rede para criar o Node na AZ 1b | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags para serem adicionadas aos recursos | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->