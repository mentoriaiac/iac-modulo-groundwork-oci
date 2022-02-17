provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

module "groundwork" {
  source                        = "../"
  root_compartment_id           = var.root_compartment_id
  compartment_name              = local.name
  compartment_description       = "Compartment para guardar os recursos relativos a ${local.name}"
  vcn_display_name              = "${local.name}-vcn"
  vcn_dns_label                 = local.name
  internet_gateway_display_name = "${local.name}-igw"
  subnet_display_name           = "${local.name}-subnet"
  subnet_dns_label              = local.name
}

output "vcn_cidr" {
  value = module.groundwork.vcn_cidr
}

output "subnet_cidr" {
  value = module.groundwork.subnet_cidr
}

output "compartment_name" {
  value = module.groundwork.compartment_name
}

locals {
  name = "MentoriaIaC"
}
