
data "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
}

data "azurerm_subnet" "azsubnet" {
  name                 = "${var.existingSubnetName}"
  virtual_network_name = "${var.existingVirtualNetworkName}"
  resource_group_name  = "${var.resource_group_name}"
}

resource "azurerm_public_ip" "myterraformpublicip" {
    name                         = "${var.vmName}-pip"
    location                     = "${var.location}"
    resource_group_name          = "${var.resource_group_name}"
    allocation_method            = "Dynamic"
    domain_name_label            = "${var.vmName}"

    tags = {
        environment = "Terraform Demo"
    }
}

resource "azurerm_network_interface" "myterraformnic" {
    name                        = "${var.vmName}-nic"
    location                    = "${var.location}"
    resource_group_name         = "${var.resource_group_name}"
    depends_on                  = [azurerm_public_ip.myterraformpublicip]
    
    ip_configuration {
        name                          = "myNicConfiguration"
        subnet_id                     = "${data.azurerm_subnet.azsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myterraformpublicip.id}"
    }

    tags = {
        environment = "Terraform Demo"
    }
}

resource "azurerm_virtual_machine" "myterraformvm" {
    name                  = "${var.vmName}"
    location              = "${var.location}"
    resource_group_name   = "${var.resource_group_name}"
    network_interface_ids = [azurerm_network_interface.myterraformnic.id]
    vm_size               = "${var.vmSize}"
    depends_on            = [azurerm_network_interface.myterraformnic]

    storage_os_disk {
        name              = "${var.vmName}-disk"
        create_option     = "FromImage"
        
    }

    storage_image_reference {
        publisher = "${var.imagePublisher}"
        offer     = "${var.imageOffer}"
        sku       = "${var.ubuntuOSVersion}"
        version   = "latest"
    }

    os_profile {
        computer_name  = "${var.vmName}"
        admin_username = "${var.vmAdminUserName}"
        admin_password = "${var.vmAdminPassword}"
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }

    tags = {
        environment = "Terraform Demo"
    }
}


