variable "dc_name" {

  description = "Name of the DC"
  type        = string
  default     = "SriAuroNetDC_01"

}

variable "vcenter_host_name" {

  description = "Host name of the Vcenter host"
  type        = string
  default     = "vcenter1.sriauronet.lan"

}

variable "vcenter_user_name" {

  description = "Name of the Admin accont who can creaet VMs"
  type        = string
  sensitive   = true
  default     = "administrator@sriauronet.lan"

}

variable "vcneter_user_password" {

  description = "Password "
  type        = string
  sensitive   = true
  default     = "Beauty!123"

}

variable "project_folder_name" {

  description = "Project folder name"
  type        = string

}
