resource "oci_identity_compartment" "compartment" {
    #Required
    compartment_id = var.root_compartment_id
    description = var.compartment_description
    name = var.compartment_name

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
}

resource "oci_core_vcn" "vcn" {
    #Required
    compartment_id = oci_identity_compartment.compartment.id

    #Optional
    cidr_blocks = var.vcn_cidr_blocks
    display_name = var.vcn_display_name
    dns_label = var.vcn_dns_label
    
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
    
}

resource "oci_core_internet_gateway" "internet_gateway" {
    #Required
    compartment_id = oci_identity_compartment.compartment.id
    vcn_id         = oci_core_vcn.vcn.id

    #Optional
    display_name = var.internet_gateway_display_name
    #freeform_tags = {"Department"= "Finance"}
    #defined_tags = {"Operations.CostCenter"= "42"}
    
}

resource "oci_core_default_route_table" "generated_oci_core_default_route_table" {
  display_name = "pub-routetable-01"
  route_rules {
    description       = "Tráfedo de/para internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
  }
  manage_default_resource_id = oci_core_vcn.vcn.default_route_table_id
}

resource "oci_core_subnet" "subnet" {
    # Required
    compartment_id = oci_identity_compartment.compartment.id
    vcn_id         = oci_core_vcn.vcn.id
    cidr_block     = var.subnet_cidr_block

    # Optional
    #availability_domain = var.subnet_availability_domain
    display_name        = var.subnet_display_name
    dns_label           = var.subnet_dns_label

    # Security
    route_table_id    = oci_core_vcn.vcn.default_route_table_id
    security_list_ids = [oci_core_vcn.vcn.default_security_list_id]

    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
}