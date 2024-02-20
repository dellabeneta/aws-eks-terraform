variable "cidr_block" {
  type        = string
  description = "IP CIDR que sera usado na VPC"
}

variable "project_name" {
  type        = string
  description = "Nome do projeto que pode ser usado nas tags de nome (Name tag)"
}

variable "region" {
  type        = string
  description = "Regiao da AWS onde o projeto sera provisionado"
}

variable "tags" {
  type        = map(any)
  description = "Tags para serem adicionadas aos recursos"
}

variable "desired_size" {
  type        = number
  description = "Valor desejado de Nodes"
}

variable "min_size" {
  type        = number
  description = "Valor minimo de Nodes"
}

variable "max_size" {
  type        = number
  description = "Valor maximo de Nodes"
}

variable "instance_types" {
  type        = string
  description = "Tipo da instancia que sera usada para criacao dos Nodes"
}