variable "vmName" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "qatodhsub123"
}

variable "location" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "Australia Southeast"
}

variable "resource_group_name" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "Testgroup"
}

variable "existingVirtualNetworkName" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "vnet01qaodhsub"
}

variable "existingSubnetName" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "vnet01-qaodhsub"
}

variable "vmSize" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "Standard_B2ms"
}

variable "poolName" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "linux pool"
}

variable "PersonalAccessToken" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "y437kbc645yy7uhe674d4546789oid6lebz5bya"
}

variable "VSTSAccount" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "tes"
}

variable "teamProject" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "tes"
}

variable "vmAdminUserName" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "testadmin"
}

variable "vmAdminPassword" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "abc@123"
}

variable "imagePublisher" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "Canonical"
}

variable "imageOffer" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "UbuntuServer"
}

variable "ubuntuOSVersion" {
  description = "The prefix used for all resources in this example. Needs to be a short (6 characters) alphanumeric string. Example: `myprefix`."
  default = "16.04.0-LTS"
}

