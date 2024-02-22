## Bem-vindo(a) ao 'Super-Módulo' para EKS. Este é um código Terraform completeo para provisionamento de um Cluster EKS na AWS. Ele contempla Rede, um Nodegroup, Policies, Roles, Load Balancer Controller e demais configurações necessárias para criação de um cluster 100% operacional. Espero que aproveitem e façam bom uso dessa estrutura

<img src="https://drive.google.com/uc?export=view&id=1jwpV_Q0bCWpo4LXJy2q1BMgh7zEVRqj3" width="1000">

Bem, todo esse trabalho não teria sido possível sem o treinamento facultado através do [Mateus Muller](https://github.com/mateusmuller), treinamento que posso indicar par todos (https://www.udemy.com/course/terraform-para-aws/?couponCode=24T4FS22124)
Que fiquem aqui os devidos créditos!

Este repositório é **público** e quiser contribuir de alguma forma, pode contatar no Linkedin em: https://www.linkedin.com/in/mdellabeneta/, ficaria muito feliz com o seu contato.


Com isso posto, vamos falar um pouco mais do que temos por aqui:

```
della@desklin:~/projetos$ tree terraform-supermodule/
terraform-supermodule/
├── LICENSE
├── modules
│   ├── cluster
│   │   ├── cluster.tf
│   │   ├── iam.tf
│   │   ├── oidc.tf
│   │   ├── output.tf
│   │   ├── README.md
│   │   ├── sg-rule.tf
│   │   └── variables.tf
│   ├── loadbalancer
│   │   ├── data.tf
│   │   ├── helm.tf
│   │   ├── iam_policy.json
│   │   ├── iam.tf
│   │   ├── locals.tf
│   │   ├── policy.tf
│   │   ├── README.md
│   │   ├── serviceaccount.tf
│   │   └── variables.tf
│   ├── network
│   │   ├── igw.tf
│   │   ├── ngw.tf
│   │   ├── output.tf
│   │   ├── private.tf
│   │   ├── public.tf
│   │   ├── README.md
│   │   ├── region.tf
│   │   ├── variables.tf
│   │   └── vpc.tf
│   └── nodegroup
│       ├── iam.tf
│       ├── mng.tf
│       ├── README.md
│       └── variables.tf
├── modules.tf
├── provider.tf
├── README.md
└── variables.tf

6 directories, 34 files
```

Nas tabelas abaixo (geradas com o [pre-commit](https://pre-commit.com/) e [terraform-docs](https://terraform-docs.io/)), podemos ver maiores detalhes como dependências, versionamento utilizado e, principalmente, os INPUTS que são **requisitos** para a utilização do projeto.


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
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/loadbalancer | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_eks_node_group"></a> [eks\_node\_group](#module\_eks\_node\_group) | ./modules/nodegroup | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Nome do profile configurado na AWS CLI localmente em seu PC | `string` | n/a | yes |
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

