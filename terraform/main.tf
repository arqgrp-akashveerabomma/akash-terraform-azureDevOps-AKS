module "aks_acr" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  network_plugin      = var.network_plugin
  load_balancer_sku   = var.load_balancer_sku
  tags                = var.tags
  acr_name            = var.acr_name
  acr_sku             = var.acr_sku
  subscription_id     = var.subscription_id
}