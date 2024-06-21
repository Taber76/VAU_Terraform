resource "oci_core_instance" "vau_ms_auth_instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.vau-compartment.id
  shape               = "VM.Standard.E2.1.Micro"
  source_details {
    source_id   = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaxkrwo2fm3qy3jtw4k6k2rsf5frjsfc4es6mr4dejtuerrg3opn7a"
    source_type = "image"
  }

  display_name = "vau-ms-auth-instance"
  create_vnic_details {
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
    user_data = base64encode(<<-EOF
      #!/bin/bash
      curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo bash -
      sudo yum install -y nodejs
      dnf install nodejs -y
      # Clone repository
      git clone https://github.com/Taber76/VAU-MS-TS-Users.git /server
      cd /server

      # Install dependencies
      npm install

      # Start server
      npm start
      EOF
    )
  }
}
# Next steps:
# - Add .env file
# - Add config and authentication files

resource "oci_core_instance" "vau_ms_campaigns_instance" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.vau-compartment.id
  shape               = "VM.Standard.E2.1.Micro"
  source_details {
    source_id   = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaxkrwo2fm3qy3jtw4k6k2rsf5frjsfc4es6mr4dejtuerrg3opn7a"
    source_type = "image"
  }

  display_name = "vau-ms-campaigns-instance"
  create_vnic_details {
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }
}

