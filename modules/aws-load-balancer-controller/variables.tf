variable "project_name" {
  type        = string
  description = "Nome do projeto que pode ser usado nas tags de nome (Name tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags para serem adicionadas aos recursos"
}

variable "oidc" {
  type        = string
  description = "URL HTTPS do provedor OIDC do cluster EKS"
}

variable "cluster_name" {
  type        = string
  description = "Nome do CLuster EKS"
}

variable "teste" {
  type = string
}