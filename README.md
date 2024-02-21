# Bem-vindo(a) a Super-Módulo para EKS. Com VPC, Node Group, IAM Policies, Roles, Load Balancer Controller, entre outros detalhes que estarão mencionados nesta documentação. Espero que aproveitem e façam bom uso dessa estrutura :)

Bem, todo esse trabalho não teria sido possível sem o treinamento facultado através do [Mateus Muller](https://www.linkedin.com/in/mateus-gabriel-m%C3%BCller-790709bb/), treinamento que posso indicar par todos (https://www.udemy.com/course/terraform-para-aws/?couponCode=24T4FS22124)
Que fiquem aqui os devidos créditos!

Olá, me chamo Michel Dellabeneta e este repositório é **público** para todos. Se você quiser contribuir de alguma forma, pode contatar no Linkedin em: https://www.linkedin.com/in/mdellabeneta/, ficaria muito feliz com o seu contato.


Com isso posto, vamos falar um pouco mais do que temos por aqui:

Na documentação abaixo, gerada com o [pre-commit](https://pre-commit.com/) e [terraform-docs](https://terraform-docs.io/), podemos ver maiores detalhes e dependências. E, claro, principalmente os INPUTS que são **requisitos** para a utilização do projeto.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.37.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.12.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.26.0 |

## Modules


| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_aws_load_balancer_controller"></a> [eks\_aws\_load\_balancer\_controller](#module\_eks\_aws\_load\_balancer\_controller) | ./modules/loadbalancer-controller | n/a |
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |
| <a name="module_eks_node_group"></a> [eks\_node\_group](#module\_eks\_node\_group) | ./modules/nodegroup | n/a |

## Inputs


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_cli_profile"></a> [aws\_cli\_profile](#input\_aws\_profile) | Nome do profile configurado na AWS CLI localmente em seu PC | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | IP CIDR que sera usado na VPC | `string` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Valor desejado de Nodes | `number` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | Versao do EKS que sera provisionada na AWS | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Tipo da instancia que sera usada para criacao dos Nodes | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Valor maximo de Nodes | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Valor minimo de Nodes | `number` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto que pode ser usado nas tags de nome (Name tag) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Regiao da AWS onde o projeto sera provisionado | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags para serem adicionadas aos recursos | `map(any)` | n/a | yes |

<!-- END_TF_DOCS -->

Observe o código abaixo onde deixo de exemplo, um "main.tf" já configurado, pronto para o terraform apply.

	module "eks" {
	  source = "git@github.com:dellabeneta/terraform-supermodule.git?ref=main"

	  aws_cli_profile = "dellabeneta"
	  cidr_block      = "10.0.0.0/16"
	  desired_size    = 1
	  eks_version     = 1.29
	  instance_types  = "t3.medium"
	  max_size        = 3
	  min_size        = 1
	  project_name    = "poc-eks-"
	  region          = "sa-east-1"
	  tags            = local.tags
	}

	terraform {
	  backend "s3" {
	    bucket = "dellabeneta-eks-backend"
	    key    = "dev/terraform.state"
	    region = "sa-east-1"
	  }   
	}

	locals {
	  tags = {
	    Departamento = "Devops"
	    Organização  = "Grupo Dellabeneta S/A"
	    Projeto      = "EKS em IaC com Terraform"
	    Ambiente     = "Desenvolvimento"
	  }
	}


Obs.: é sempre válido lembrar que você precisa estar autenticado à sua conta da AWS. Indico que utilize a CLI oficial devidamente configurada. Neste link você pode ver como: https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html