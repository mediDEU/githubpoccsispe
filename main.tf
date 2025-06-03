# Create a Resource Group if it doesn’t exist
resource "azurerm_resource_group" "tfexample" {
  name     = "demo-githubpoc-rg"
  location = "West Europe"
}
