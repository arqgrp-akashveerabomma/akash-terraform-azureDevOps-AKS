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
acr_name = "ncsdemo"
acr_sku  = "Basic"
subscription_id = "927b627a-f48c-4dac-9be9-f669d3570d5c"