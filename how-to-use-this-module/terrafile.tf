provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

module "groundwork" {
  source                        = "../"
  root_compartment_id           = "ocid1.tenancy.oc1..aaaaaaaa7zimmsthvpvbveb6f6jkwvrny2sarj4sca2xawtqrjfsswjnyjfa"
  compartment_name              = "MentoriaIaC"
  compartment_description       = "Descrição - Mentoria IaC"
  vcn_display_name              = "MentoriaIaC"
  vcn_dns_label                 = "MentoriaIaC"
  internet_gateway_display_name = "MentoriaIaC-igw"
  subnet_display_name           = "MentoriaIaC"
  subnet_dns_label              = "MentoriaIaC"
}

output "vcn_cidr" {
  value = module.groundwork.vcn_cidr
}

output "subnet_cidr" {
  value = module.groundwork.subnet_cidr
}