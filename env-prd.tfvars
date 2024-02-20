cidr_block   = "10.0.0.0/16"
project_name = "eks-producao"
region       = "sa-east-1"
tags = {
  Departamento = "Devops"
  Organização  = "Grupo Dellabeneta S/A"
  Projeto      = "EKS em IaC com Terraform"
  Ambiente     = "Producao"
}
desired_size    = 2
min_size        = 2
max_size        = 4
instance_types  = "m6g.xlarge"
eks_version     = "1.29"
aws_cli_profile = "dellabeneta"