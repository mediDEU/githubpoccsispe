resource "azurerm_cognitive_account" "openaicsi" {
  name                = "openaicsi"
  location            = local.location_openaiservice
  resource_group_name = azurerm_resource_group.openaicsi_rg.name
  kind                = "OpenAI"
  sku_name            = "S0"
  custom_subdomain_name= "csisubdomain"
  public_network_access_enabled= true
}

resource "azurerm_cognitive_deployment" "openaicsideploy" {
  name                 = "openaicsideploy"
  cognitive_account_id = azurerm_cognitive_account.openaicsi.id
  model {
    format  = "OpenAI"
    name    = "gpt-4o-mini"
    version = "2024-07-18"

  }

  sku {
    name = "Standard"
  }
}

