variable "project_name" {
  type        = string
  description = "Nome do projeto que pode ser usado nas tags de nome (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags para serem adicionadas aos recursos"
}

variable "cluster_name" {
  type        = string
  description = "Nome do CLuster EKS"
}

variable "subnet_private_1a" {
  type        = string
  description = "Sub-rede para criar o Node na AZ 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Sub-rede para criar o Node na AZ 1b"
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

variable "teste" {
  type = string
}