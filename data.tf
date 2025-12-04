

# Get Availability Domains
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}

# Get Oracle Linux Image
data "oci_core_images" "oracle_linux" {
  compartment_id            = var.compartment_ocid
  operating_system          = "Oracle Linux"
  operating_system_version  = "8"
  shape                     = "VM.Standard.E2.1.Micro"
}
