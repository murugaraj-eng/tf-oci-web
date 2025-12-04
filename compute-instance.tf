
resource "oci_core_instance" "web_instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.oracle_linux.images[0].id
     
  }

  create_vnic_details {
    subnet_id = oci_core_subnet.my_subnet.id
    assign_public_ip = true
  }

 metadata = {
    ssh_authorized_keys = file("C:\\Users\\ma\\.ssh\\oci_key.pub")
    user_data = base64encode(<<-EOT
      #!/bin/bash
      yum install -y httpd
      systemctl enable httpd
      systemctl start httpd
      echo "<h1>Hello from OCI Webserver</h1>" > /var/www/html/index.html
    EOT
    )
  }

  display_name = "webserver-instance"
}
