cidr_block   = "192.168.0.0/16"
project_name = "eks-desenvolvimento"
region       = "sa-east-1"
tags = {
  Departamento = "Devops"
  Organização  = "Grupo Dellabeneta S/A"
  Projeto      = "EKS em IaC com Terraform"
  Ambiente     = "Desenvolvimento"
}
desired_size    = 1
min_size        = 1
max_size        = 1
instance_types  = "t4g.micro"
eks_version     = "1.29"
aws_cli_profile = "dellabeneta"