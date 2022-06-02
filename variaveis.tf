#Uso de variáveis

variable "namerg" {
  type        = string
  description = "Nome do Resource Group"
  default     = "rg-proevolua"
}

variable "location" {
  type        = string
  default     = "northcentralus"
  description = "Localizacao dos Recursos do Azure. Ex: northcentralus"
}

variable "tags" {
  type        = map(any)
  description = "Tags nos Recursos e Servicos do Azure"
  default = {
    Ambiente = "AulaDocker/Proevolua"
    Aluno    = "Leopoldo Cardoso"
  }
}

variable "vnetenderecos" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}
