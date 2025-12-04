resource "oci_core_route_table" "my_rt" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.my_vcn.id
  display_name   = "my-route-table"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.my_igw.id
  }
}

