terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "nome_projeto" {
  description = "Nome do projeto Terraform"
  default     = "meu primeirissimo projeto com variavel no Terraform"
}

output "mensagem" {
  value = var.nome_projeto
}

resource "local_file" "arquivo_estudo" {
  filename = "terraform-aprendizado.txt"
  content  = "Meu segundo teste alterando um recurso Terraform"
}
data "azurerm_client_config" "current" {}

output "azure_tenant_id" {
  value = data.azurerm_client_config.current.tenant_id
}

output "azure_subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}
