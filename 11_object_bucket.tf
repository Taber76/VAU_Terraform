
resource "oci_objectstorage_bucket" "test_bucket" {
  compartment_id = oci_identity_compartment.vau-compartment.id
  name           = var.bucket_name
  namespace      = var.namespace

  # Opcional
  access_type  = "ObjectReadWithoutList"
  auto_tiering = "InfrequentAccess"
  storage_tier = "Standard"
}
