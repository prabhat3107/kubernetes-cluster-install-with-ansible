terraform {
  required_version = ">= 1.10"
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 2.11.1"
    }
  }
}

provider "vsphere" {

  user                 = var.vcenter_user_name
  password             = var.vcneter_user_password
  vsphere_server       = var.vcenter_host_name
  allow_unverified_ssl = true

}

data "vsphere_datacenter" "dc_name" {

  name = var.dc_name

}

module "vm_path" {
  source                     = "../modules/vm-folder"
  project_folder_name        = var.project_folder_name
  vsphere_datacenter_id      = data.vsphere_datacenter.dc_name.id

}
