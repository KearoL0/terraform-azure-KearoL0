# variables.tf

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "RG-Name"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
  default     = "Admin-username"
}

variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
}

variable "web_server_count" {
  description = "Number of web servers"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of the virtual machines"
  type        = string
  default     = "Standard_B1s"
}

variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
  default     = "lb-http"
}

variable "web_server_image" {
  description = "OS image for the web servers"
  type        = string
  default     = "Canonical:0001-com-ubuntu-server-focal:20_04-lts-gen2:latest"
}

variable "load_balancer_image" {
  description = "OS image for the load balancer"
  type        = string
  default     = "Canonical:0001-com-ubuntu-server-focal:20_04-lts-gen2:latest"
}

variable "admin_password"{
  description = "value"
  type = string
  default = "admin-pwd"
}
