variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where resources will be created"
}

variable "location" {
  type        = string
  description = "The Azure location where resources will be created"
}

variable "aks_name" {
  type        = string
  description = "The name of the Azure Kubernetes Service (AKS) cluster"
}

variable "dns_prefix" {
  type        = string
  description = "The DNS prefix for the AKS cluster"
}

variable "node_count" {
  type        = number
  description = "The number of nodes in the AKS cluster"
}

variable "vm_size" {
  type        = string
  description = "The size of the virtual machines in the AKS cluster"
}

variable "network_plugin" {
  type        = string
  description = "The network plugin for the AKS cluster"
}

variable "load_balancer_sku" {
  type        = string
  description = "The SKU for the load balancer in the AKS cluster"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the resources"
}

variable "acr_name" {
  type        = string
  description = "The name of the Azure Container Registry (ACR)"
}

variable "acr_sku" {
  type        = string
  description = "The SKU of the Azure Container Registry"
}

variable "subscription_id" {
  type= string
}