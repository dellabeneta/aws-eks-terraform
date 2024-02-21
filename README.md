#  Dellabeneta IaC para criação de Cluster EKS

####  Observe a necessidade da criação de um .tfvars para os inputs. Deixei disponível neste código três exemplos:

1. env-dev.tfvars --> ambiente de desenvolvimento;
2. env-hml.tfvars --> ambiente de para homologação com o cliente final;
3. env-prd.tfvars --> ambiente produtivo final.

ou seja, quando for rodar o terraform plan ou apply, informe o .tfvars que deseja:

terraform apply -var-file=env-dev.tfvars

####  Observe também a necessidade do backend remoto (deixei no provide.tf apenas como exemplo) e, é claro, configurar o CLI da AWS com seu profile. Você vai precisar informá-lo (o profile) nos tfvars que passarão os inputs.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.37.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.26.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/loadbalancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_eks_node_group"></a> [eks\_node\_group](#module\_eks\_node\_group) | ./modules/nodegroup | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_cli_profile"></a> [aws\_cli\_profile](#input\_aws\_cli\_profile) | Nome do profile configurado na AWS CLI localmente em seu PC | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | IP CIDR que sera usado na VPC | `string` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Valor desejado de Nodes | `number` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | Versao do EKS que sera provisionada na AWS | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Tipo da instancia que sera usada para criacao dos Nodes | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Valor maximo de Nodes | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Valor minimo de Nodes | `number` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto que pode ser usado nas tags de nome (Name tag) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Regiao da AWS onde o projeto sera provisionado | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags para serem adicionadas aos recursos | `map(any)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->