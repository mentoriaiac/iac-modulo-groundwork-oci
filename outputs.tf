output "vcn_cidr" {
    value = oci_core_vcn.vcn.cidr_blocks
    description = "Bloco de IPs da VCN"
}

output "subnet_cidr" {
    value = oci_core_subnet.subnet.cidr_block
    description = "Bloco de IPs da subnet"
}