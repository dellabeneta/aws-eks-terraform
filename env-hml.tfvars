cidr_block   = "172.16.0.0/16"
project_name = "eks-homologacao"
region       = "sa-east-1"
tags = {
  Departamento = "Devops"
  Organização  = "Grupo Dellabeneta S/A"
  Projeto      = "EKS em IaC com Terraform"
  Ambiente     = "Homologacao"
}
desired_size    = 2
min_size        = 2
max_size        = 3
instance_types  = "t4g.medium"
eks_version     = "1.29"
aws_cli_profile = "dellabeneta"