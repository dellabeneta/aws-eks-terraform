variable "cidr_block" {
  type        = string
  description = "IP CIDR que sera usado na VPC"
}

variable "project_name" {
  type        = string
  description = "Nome do projeto que pode ser usado nas tags de nome (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags para serem adicionadas aos recursos"
}

variable "teste" {
  type = string
}