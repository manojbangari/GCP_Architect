variable "project_id" {
  description = "GCP Dev project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "instance_name" {
  description = "Dev VM name"
  type        = string
}

variable "machine_type" {
  description = "Dev VM machine type"
  type        = string
}

variable "image" {
  description = "Dev VM boot image"
  type        = string
}

variable "network" {
  description = "Dev VPC network"
  type        = string
}

variable "network_name" {
  description = "Dev VPC name"
  type        = string
}

variable "subnet_name" {
  description = "Dev subnet name"
  type        = string
}

variable "subnet_cidr" {
  description = "Dev subnet CIDR"
  type        = string
}
