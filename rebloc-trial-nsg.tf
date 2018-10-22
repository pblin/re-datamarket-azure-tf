resource "azurerm_network_security_group" "rebloc-trial-nsg" {
name = "rebloc-trial-nsg"
location = "eastus"
resource_group_name = "rebloc-berlin"
tags = ""
security_rule {
name = "ssh"
description = "Allow SSH"
priority = 200
direction = "Inbound"
access = "Allow"
protocol = "TCP"
source_address_prefix = "*"
source_port_range = "*"
destination_address_prefix = "*"
destination_port_range = "22"
}
security_rule {
name = "Port_3000"
description = ""
priority = 210
direction = "Inbound"
access = "Allow"
protocol = "TCP"
source_address_prefix = "*"
source_port_range = "*"
destination_address_prefix = "*"
destination_port_range = "3000"
}
security_rule {
name = "Port_8545"
description = ""
priority = 220
direction = "Inbound"
access = "Allow"
protocol = "TCP"
source_address_prefix = "*"
source_port_range = "*"
destination_address_prefix = "*"
destination_port_range = "8545"
}
security_rule {
name = "Port_Enigma"
description = ""
priority = 230
direction = "Inbound"
access = "Allow"
protocol = "TCP"
source_address_prefix = "*"
source_port_range = "*"
destination_address_prefix = "*"
destination_port_range = "8080-8082"
}
}
