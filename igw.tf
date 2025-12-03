resource "oci_core_internet_gateway" "my_igw" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.my_vcn.id
  display_name   = "my-internet-gateway"
  enabled        = true
}
