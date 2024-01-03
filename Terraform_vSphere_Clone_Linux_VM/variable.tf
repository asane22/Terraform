variable "datacenter" {
  description = "Virtual Datacenter name where VM will be placed"
  type        = string
  default     = "Asgard"
}

variable "cluster" {
  description = "Password to connect to vCenter Server"
  type        = string
  default     = "Bifrost"
}

variable "network" {
  description = "IP or DNS name to connect to vCenter server"
  type        = string
  default     = "VM Network"
}

variable "datastore" {
  description = "IP or DNS name to connect to vCenter server"
  type        = string
  default     = "StarLord_Datastore01"
}

variable "template" {
  description = "IP or DNS name to connect to vCenter server"
  type        = string
  default     = "Wakanda_Ubuntu_01"
}

variable "vminfo" {
  type = map(object({
    vm     = string
    cpu    = string
    memory = string
  }))
  default = {
    "dev" = {
      vm     = "galaxy"
      cpu    = "1"
      memory = "1024"
    }
    "prod" = {
      vm     = "gardian"
      cpu    = "2"
      memory = "2048"
    }
  }
}