resource "oci_core_subnet" "my_subnet" {
  cidr_block        = var.subnet_cidr
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_vcn.my_vcn.id
  display_name      = "my-subnet"
  route_table_id    = oci_core_route_table.my_rt.id
  prohibit_public_ip_on_vnic = false
}