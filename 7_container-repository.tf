resource "oci_artifacts_container_repository" "vau_ms_auth_repo" {
  compartment_id = oci_identity_compartment.vau-compartment.id
  display_name   = var.container_repository_ms_auth
  is_public      = true
}

resource "oci_artifacts_container_repository" "vau_ms_video_repo" {
  compartment_id = oci_identity_compartment.vau-compartment.id
  display_name   = var.container_repository_ms_video
  is_public      = true
}

