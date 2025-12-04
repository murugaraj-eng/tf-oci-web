
variable "tenancy_ocid" {
  description = "The OCID of your tenancy"
  type        = string
}

variable "compartment_ocid" {
  description = "The OCID of the compartment"
  type        = string
}

variable "user_ocid" {
  description = "The OCID of your user"
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint of the uploaded API key"
  type        = string
}

variable "private_key_path" {
  description = "Path to your private key file"
  type        = string
}

variable "region" {
  description = "OCI region"
  type        = string
  default     = "ap-hyderabad-1"
}

variable "compartment_name" {
  description = "Name of the compartment to create"
  type        = string
  default     = "Automation_Compartment"
}

variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

