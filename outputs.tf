# Outputs for compartment

output "compartment-name" {
  value = oci_identity_compartment.vau-compartment.name
}

output "compartment-OCID" {
  value = oci_identity_compartment.vau-compartment.id
}



# Outputs for the vcn module

output "vcn_id" {
  description = "OCID of the VCN that is created"
  value       = module.vcn.vcn_id
}
output "id-for-route-table-that-includes-the-internet-gateway" {
  description = "OCID of the internet-route table. This route table has an internet gateway to be used for public subnets"
  value       = module.vcn.ig_route_id
}
output "nat-gateway-id" {
  description = "OCID for NAT gateway"
  value       = module.vcn.nat_gateway_id
}
output "id-for-for-route-table-that-includes-the-nat-gateway" {
  description = "OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway."
  value       = module.vcn.nat_route_id
}



# Outputs for private security list

output "private-security-list-name" {
  value = oci_core_security_list.private-security-list.display_name
}
output "private-security-list-OCID" {
  value = oci_core_security_list.private-security-list.id
}



# Outputs for public security list

output "public-security-list-name" {
  value = oci_core_security_list.public-security-list.display_name
}
output "public-security-list-OCID" {
  value = oci_core_security_list.public-security-list.id
}



# Outputs for private subnet

output "private-subnet-name" {
  value = oci_core_subnet.vcn-private-subnet.display_name
}
output "private-subnet-OCID" {
  value = oci_core_subnet.vcn-private-subnet.id
}



# Outputs for public subnet

output "public-subnet-name" {
  value = oci_core_subnet.vcn-public-subnet.display_name
}
output "public-subnet-OCID" {
  value = oci_core_subnet.vcn-public-subnet.id
}


# Outputs for container-example_repository

output "oci_artifacts_container_repository_auth" {
  value = oci_artifacts_container_repository.vau_ms_auth_repo

}

output "oci_artifacts_container_repository_video" {
  value = oci_artifacts_container_repository.vau_ms_video_repo
}


# Aavailability domain to be used for the compute instance.
output "name-of-first-availability-domain" {
  value = data.oci_identity_availability_domains.ads.availability_domains[0].name
}


# Outputs for compute instance
output "public-ip-for-auth-compute-instance" {
  value = oci_core_instance.vau_ms_auth_instance.public_ip
}

output "public-ip-for-campaigns-compute-instance" {
  value = oci_core_instance.vau_ms_campaigns_instance.public_ip
}


# Autonomous Database outputs
output "autonomous_database_id" {
  description = "The ID of the Autonomous Database"
  value       = oci_database_autonomous_database.test_autonomous_database.id
}

output "autonomous_database_name" {
  description = "The name of the Autonomous Database"
  value       = oci_database_autonomous_database.test_autonomous_database.db_name
}
