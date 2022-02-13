## Provider Configuration ##
variable "tenancy_ocid" {
  type        = string
  description = "ID do Tenancy da OCI"
}
variable "user_ocid" {
  type        = string
  description = "ID do usuário para comunicação com OCI"
}
variable "private_key_path" {
  type        = string
  description = "Caminho para chave privada que será usada na OCI"
}
variable "fingerprint" {
  type        = string
  description = "Fingerprint gerado pela OCI no usuário de comunicação"
}
variable "region" {
  type        = string
  description = "Região onde os recursos serão criados"
}
variable "root_compartment_id" {
  type        = string
  description = "ID do compartment pai onde o nosso compartment será criado"
}