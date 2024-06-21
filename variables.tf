variable "parent_compartment_id" {
  description = "The OCID of the father compartment"
  type        = string
}

variable "compartment_description" {
  description = "The description of the compartment"
  type        = string
}

variable "compartment_name" {
  description = "The name of the compartment"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
}

variable "vcn_name" {
  description = "The name of the VCN"
  type        = string
}

variable "vcn_dns_label" {
  description = "The DNS label for the VCN"
  type        = string
}

variable "vcn_cidrs" {
  description = "The CIDR block for the VCN"
  type        = string
}

variable "private_security_list_name" {
  description = "The name of the private security list"
  type        = string
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_security_list_name" {
  description = "The name of the public security list"
  type        = string
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "public_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "container_repository_ms_auth" {
  description = "The name of the container repository"
  type        = string
}

variable "container_repository_ms_video" {
  description = "The name of the container repository"
  type        = string
}

variable "ssh_public_key_path" {
  description = "The SSH public key path"
  type        = string
}

variable "database_admin_password" {
  description = "The database admin password"
  type        = string
}

variable "autonomous_database_name" {
  description = "The name of the autonomous database"
  type        = string
}

variable "admin_email" {
  description = "The admin email"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "namespace" {
  description = "The name of the namespace"
  type        = string
}
