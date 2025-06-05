terraform {
  required_version = ">= 1.0"
  backend "azurerm" {
    resource_group_name  = "githubpoc"
    storage_account_name = "stcstatefiletfpoc"
    container_name       = "tfstate"
    key                  = "tf.tfstate"
    tenant_id            = "023a7871-db5b-45bd-b776-88e3cd7e0b2c"
    subscription_id      = "b307668a-47b5-4933-b51f-316827f474fa"
    }
}
