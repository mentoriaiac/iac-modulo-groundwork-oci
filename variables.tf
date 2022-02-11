variable "root_compartment_id" {
  type        = string
  description = "ID do compartment root"
  sensitive   = true
}

variable "compartment_name" {
  type        = string
  description = "Nome do compartment"
}

variable "compartment_description" {
  type        = string
  description = "Descrição do compartment"
}

variable "vcn_cidr_blocks" {
  type        = list(string)
  description = "Lista com ranges de IP para esta VCN"
  default     = ["10.0.0.0/16"]
}

variable "vcn_display_name" {
  type        = string
  description = "Nome da VCN"
}

variable "vcn_dns_label" {
  type        = string
  description = "Domínio raiz do VCN"
}

variable "internet_gateway_display_name" {
  type        = string
  description = "Nome do internet gateway"
}

variable "subnet_cidr_block" {
  type        = string
  description = "Bloco CIDR da subnet"
  default     = "10.0.0.0/24"
}

variable "subnet_display_name" {
  type        = string
  description = "Nome da subnet na UI"
}

variable "subnet_dns_label" {
  type        = string
  description = "Label de DNS da Subnet"
}