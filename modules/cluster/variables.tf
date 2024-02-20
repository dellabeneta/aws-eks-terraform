variable "project_name" {
  type        = string
  description = "Nome do projeto que pode ser usado nas tags de nome (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags para serem adicionadas aos recursos"
}

variable "subnet_public_1a" {
  type        = string
  description = "Sub-rede para criar o cluster EKS na AZ 1a"
}

variable "subnet_public_1b" {
  type        = string
  description = "Sub-rede para criar o cluster EKS na AZ 1b"
}

variable "eks_version" {
  type        = string
  description = "Versao do EKS que sera provisionada na AWS"
}