resource_group_name = "azureaks"
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
acr_name = "ncsdemo12450"
acr_sku  = "Basic"
subscription_id = "24f9907e-0327-4628-aa3f-b4b07b101244"