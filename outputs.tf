
output "ip_public" {

 value = module.linuxservers[*].ip_public_vm
  
}

output "user_connection" {

 value = module.linuxservers[*].default_user
  
}
