resource "oci_database_autonomous_database" "test_autonomous_database" {
  #Required
  admin_password = var.database_admin_password
  compartment_id = oci_identity_compartment.vau-compartment.id
  db_name        = var.autonomous_database_name

  #Optional
  is_free_tier  = true
  db_workload   = "DW"
  license_model = "LICENSE_INCLUDED"
  customer_contacts {
    email = var.admin_email
  }

  # Allow access from the internet
  whitelisted_ips = ["0.0.0.0/0"]
}
