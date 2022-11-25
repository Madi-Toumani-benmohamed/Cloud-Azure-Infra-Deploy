variable "resource_group_name" {
description = "Name of the environment"
default = "terraform"
}
variable "location" {
description = "Azure location to use"
default = "AustraliaEast"
}


variable "db_name" {
description = "Azure db name"
default = "myexamplesqlserver00120"
}