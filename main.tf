
#########################################################
## Create Network Security Rules
#########################################################

resource "azurerm_network_security_rule" "nsg_rule" {
  count                                       = var.nsg_rule_status == "Enabled" ? 1 : 0
  resource_group_name                         = var.resource_group_name
  network_security_group_name                 = var.nsg_name
  name                                        = var.nsg_rule_name
  priority                                    = var.nsg_rule_priority
  direction                                   = var.nsg_rule_direction
  access                                      = var.nsg_rule_access
  protocol                                    = var.nsg_rule_protocol
  source_port_range                           = var.nsg_rule_source_port_range
  source_port_ranges                          = var.nsg_rule_source_port_ranges
  destination_port_range                      = var.nsg_rule_destination_port_range
  destination_port_ranges                     = var.nsg_rule_destination_port_ranges
  source_address_prefix                       = var.nsg_rule_source_address_prefix
  source_address_prefixes                     = var.nsg_rule_source_address_prefixes
  destination_address_prefix                  = var.nsg_rule_destination_address_prefix
  destination_address_prefixes                = var.nsg_rule_destination_address_prefixes
  source_application_security_group_ids       = var.nsg_rule_source_asg_ids
  destination_application_security_group_ids  = var.nsg_rule_destination_asg_ids
  description                                 = var.nsg_rule_description
}