output "instance_public_ip" {
  value = oci_core_instance.web_instance.public_ip
}
