## Provider Configuration ##
variable "tenancy_ocid" {
  type        = string
  description = "ID do Tenancy da OCI"
  sensitive   = true
}

variable "user_ocid" {
  type        = string
  description = "ID do usuário para comunicação com OCI"
  sensitive   = true
}

variable "private_key" {
  type        = string
  description = "Chave privada para executar o código"
  sensitive   = true
}

variable "fingerprint" {
  type        = string
  description = "Fingerprint gerado pela OCI no usuário de comunicação"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "Região onde os recursos serão criados"
  sensitive   = true
}

variable "root_compartment_id" {
  type        = string
  description = "ID do compartment pai onde o nosso compartment será criado"
  sensitive   = true
}
