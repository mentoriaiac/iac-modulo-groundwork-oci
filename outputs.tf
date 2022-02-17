output "vcn_cidr" {
  value       = oci_core_vcn.vcn.cidr_blocks
  description = "Bloco de IPs da VCN"
}

output "subnet_cidr" {
  value       = oci_core_subnet.subnet.cidr_block
  description = "Bloco de IPs da subnet"
}

output "compartment_name" {
  value       = oci_identity_compartment.compartment.name
  description = "Nome do compartment onde os recursos serão criados"
}