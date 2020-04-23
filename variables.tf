#########################################################
## Variables Declarations
#########################################################

# Resource Group
variable "resource_group_name" {
  type        =   string
  description =   "Set this to the name of the Resource Group in which Network Security Group is created."
}

# Network Security Group
variable "nsg_name" {
    type        =   string
    description =   "Set this to the name of the Network Security Group."
}

# Network Security Rule
variable "nsg_rule_status" {
    type        =   string
    description =   "Set this to Enabled if the Network Security rule needs to be created, else set it to Disabled if the Network Security rule does not need to be created."
    default     =   "Enabled"
}
variable "nsg_rule_name" {
    type        =   string
    description =   "Set this to the name of the rule to be created."
}
variable "nsg_rule_priority" {
    type        =   string
    description =   "Set this to the priority of the rule."
}
variable "nsg_rule_direction" {
    type        =   string
    description =   "Set this to the direction i.e. if rule will be evaluated on incoming or outgoing traffic."
}
variable "nsg_rule_access" {
    type        =   string
    description =   "Set this to whether network traffic is allowed or denied."
}
variable "nsg_rule_protocol" {
    type        =   string
    description =   "Set this to the Network protocol this rule applies to."
}
variable "nsg_rule_source_port_range" {
    type        =   string
    description =   "Set this to the single Source port or single range of Source ports. Use nsg_rule_source_port_ranges variable if a list needs to be provided."
    default     =   null
}
variable "nsg_rule_source_port_ranges" {
    type        =   list
    description =   "Set this to the list of Source ports or list of range of Source ports. Use nsg_rule_source_port_range variable if only a single port or single range is needed."
    default     =   null
}
variable "nsg_rule_destination_port_range" {
    type        =   string
    description =   "Set this to the single Destination port or single range of Destination ports. Use nsg_rule_destination_port_ranges variable if a list needs to be provided."
    default     =   null
}
variable "nsg_rule_destination_port_ranges" {
    type        =   list
    description =   "Set this to the list of Destination ports or list of range of Destination ports. Use nsg_rule_destination_port_range variable if only a single port or single range is needed."
    default     =   null
}
variable "nsg_rule_source_address_prefix" {
    type        =   string
    description =   "Set this to the CIDR, Source IP range, * which matches Any, or Tags such as VirtualNetwork. Use nsg_rule_source_address_prefixes if a list needs to be provided."
    default     =   null
}
variable "nsg_rule_source_address_prefixes" {
    type        =   list
    description =   "Set this to the list of Source Address prefixes. Use nsg_rule_source_address_prefix if a single source address prefix is needed."
    default     =   null
}
variable "nsg_rule_destination_address_prefix" {
    type        =   string
    description =   "Set this to the CIDR, Destination IP range, * which matches Any, or Tags such as VirtualNetwork. Use nsg_rule_destination_address_prefixes if a list needs to be provided."
    default     =   null
}
variable "nsg_rule_destination_address_prefixes" {
    type        =   list
    description =   "Set this to the list of Destination Address prefixes. Use nsg_rule_destination_address_prefix if a single destination address prefix is needed."
    default     =   null
}
variable "nsg_rule_source_asg_ids" {
    type        =   list
    description =   "Set this to the list of Source Application Security Group IDs."
    default     =   null
}
variable "nsg_rule_destination_asg_ids" {
    type        =   list
    description =   "Set this to the list of Destination Application Security Group IDs."
    default     =   null
}
variable "nsg_rule_description" {
    type        =   string
    description =   "Set this to the description for this rule. Restricted to 140 characters."
}