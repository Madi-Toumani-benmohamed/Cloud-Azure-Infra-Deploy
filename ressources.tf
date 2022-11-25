# création de la ressource group

resource "azurerm_resource_group" "terraform" {
name = var.resource_group_name
location = var.location

}



module "linuxservers" {
  source  = "/home/ben/Documents/terraform"
  
  default_user_name = "toto"
  nombre = 2 
  source_image = ["OpenLogic","CentOS","7.5","latest"]

  }

 resource "azurerm_sql_server" "example" {
  name                         = var.db_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags = {
   environment = "production"
  }
} 
/*
provisioner "local-exec" { 
  command = "echo ${aws_instance.os1.public_ip} ansible_user=ec2-user>> inventory"
}
*/