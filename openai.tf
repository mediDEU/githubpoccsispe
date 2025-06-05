resource "azurerm_cognitive_account" "openaicsicc" {
 
  name                = "openaicsi"
  location            = "West Europe"
  resource_group_name = "demo-githubpoc-rg"
  kind                = "OpenAI"
  sku_name            = "S0"
  custom_subdomain_name= "usacsisubdomain"
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
