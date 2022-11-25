

module "linuxservers" {
  source  = "/home/ben/Documents/terraform"
  
  default_user_name = "toto"
  nombre = 2 
  source_image = ["OpenLogic","CentOS","7.5","latest"]

  }
/*
resource "azurerm_sql_server" "example" {
  name                         = "myexamplesqlserver00120"
  resource_group_name          = module.linuxservers.resource_group_name
  location                     = module.linuxservers.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags = {
   environment = "production"
  }
} 
*/