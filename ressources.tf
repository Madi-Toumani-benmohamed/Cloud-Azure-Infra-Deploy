# création de la ressource group

resource "azurerm_resource_group" "terraform" {
name = var.resource_group_name
location = var.location

}



module "linuxservers" {
  source  = "/home/ben/Documents/terraform"
  
  default_user_name = "toto"
  nombre = 2 
  #source_image = ["OpenLogic","CentOS","7.5","latest"]

  }
/*
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

resource "null_resource" "inventory_creat" {
provisioner "local-exec" { 
  command = "echo ${module.linuxservers[*].ip_public_vm} ansible_user=${module.linuxservers[*].default_user}>> inventory"
}
}

*/

resource "local_file" "inventory" {
  filename = "inventory"
 content = <<EOF
[web]
${module.linuxservers.ip_public_vm[0]}
[db]
${module.linuxservers.ip_public_vm[1]}
EOF
} 