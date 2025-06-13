variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "test_rg2"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "my_public_ip" {
  type        = string
  default     = "<MY_PUBLIC_IP>/32"
  description = "MY public IP address in CIDR notation (e.g., <YOUR_PUBLIC_IP>/32)."
}