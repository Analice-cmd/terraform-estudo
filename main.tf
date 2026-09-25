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
resource = "local_file" "arquivo_estudo" {
filename = "terraform-aprendizado.txt
content = "Meu primeirissimo recurso dentro do Terraform"
}
