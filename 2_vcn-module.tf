# Source from https://registry.terraform.io/modules/oracle-terraform-modules/vcn/oci/
module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.1.0"

  # Required Inputs
  compartment_id = oci_identity_compartment.vau-compartment.id
  region         = var.region

  internet_gateway_route_rules = null
  local_peering_gateways       = null
  nat_gateway_route_rules      = null

  # Optional Inputs
  vcn_name      = var.vcn_name
  vcn_dns_label = var.vcn_dns_label
  vcn_cidrs     = [var.vcn_cidrs]

  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true

}
