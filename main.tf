terraform {
  required_version = ">= 1.0"
}
variable "nome_projeto" {
description = "Nome do projeto Terraform"
default = "meu primeirissimo projeto com variavel no Terraform"
}


output "mensagem" {
  value = var.nome_projeto
}
