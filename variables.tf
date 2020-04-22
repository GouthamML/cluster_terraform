# Copyright (c) 2020 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

# OCI Provider
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {
  default = "us-ashburn-1"
}
variable "user_ocid" {
  default = ""
}
variable "fingerprint" {
  default = ""
}
variable "public_ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCza1KefarB84UNRstxKZVEE0TVcGnHKj5pboF7mfjEiFJWth5V68mo8sNss7HvF1BFUPazb6SScnLglWKMnhUr810+gJRPXMYEtBHv2DcR+zXSDtOncKY9EDXPfgaAnqDtMT/32MaswLzWLjJm+gwZBYEGzA4qaVoPNVXnLW3LFsC230vXZc0k4TylxaC2Q7naeUNBu+vxIAH//7hsfYk0+5895ZNCwU122e/R65QjDzYJG2VvDYpriFVsYj3MNk7lYMlWZTUPzX0hq3OOj4JCZCc6uDLqIt29RVBnh5N0QQgKaTsHMofvZvmFC4D8MP/a+ELyOiFPzy48/7dJXb49 divkashy@DIVKASHY-IN"
}

# Cluster Details
variable "cluster_name" {
  default = "Archrock demo"
}
variable "cluster_visibility" {
  default = "Public"
}
variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  default = true
}

# Node Pool Details
variable "node_pool_name" {
  default = "pool1"
}

variable "k8s_version" {
  default = "v1.15.7"
}
variable "num_pool_workers" {
  default = 1
}
variable "node_pool_shape" {
  default = "VM.Standard2.1"
}
variable "image_operating_system" {
  default = "Oracle Linux"
}
variable "image_operating_system_version" {
  default = "7.7"
}

# Network Details
variable "network_cidrs" {
  type = map(string)

  default = {
    VCN-CIDR                = "10.0.0.0/16"
    SUBNET-REGIONAL-CIDR    = "10.0.10.0/24"
    LB-SUBNET-REGIONAL-CIDR = "10.0.20.0/24"
  }
}

# Deployer variables
variable "deployer_shape" {
  default = "VM.Standard1.1"
}

variable "deployer_oci_cli_version" {
  default = "2.9.11"
}