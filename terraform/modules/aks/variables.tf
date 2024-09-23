variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location where resources will be created"
}

variable "aks_name" {
  type        = string
  description = "The name of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  description = "The DNS prefix for the AKS cluster"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "The number of nodes in the AKS cluster"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D2_v2"
  description = "The size of the VM for AKS nodes"
}

variable "network_plugin" {
  type        = string
  default     = "azure"
  description = "The network plugin for AKS"
}

variable "load_balancer_sku" {
  type        = string
  default     = "standard"
  description = "The SKU of the load balancer"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
}

variable "acr_name" {
  type        = string
  description = "The name of the Azure Container Registry"
}

variable "acr_sku" {
  type        = string
  default     = "Basic"
  description = "The SKU of the Azure Container Registry"
}

variable "subscription_id" {
  type =string
}