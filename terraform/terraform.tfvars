resource_group_name = ""
location            = "australiaeast"
aks_name            = "dev-aks-cluster"
dns_prefix          = "dev-aks"
node_count          = 1
vm_size             = "Standard_D2_v2"
network_plugin      = "azure"
load_balancer_sku   = "basic"
tags = {
  Environment = "dev"
}
acr_name = ""
acr_sku  = "Basic"
subscription_id = ""