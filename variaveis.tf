#Uso de variáveis

variable "namerg" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-proevolua"
}

variable "location" {
  description = "Localizacao dos Recursos do Azure. Ex: northcentralus"
  type        = string
  default     = "northcentralus"
}

variable "tags" {
  type        = map(any)
  description = "Tags nos Recursos e Servicos do Azure"
  default = {
    Ambiente = "Proevolua/AulaDocker"
    Aluno    = "Leopoldo Cardoso"
  }
}

variable "vnetenderecos" {
  description = "Endereços IPs de Vnets. O tipo list permite vários ranges de endereços IPs"
  type        = list(any)
  default     = ["10.0.0.0/16"]
}

variable "timezone" {

  default = "E. South America Standard Time"
}