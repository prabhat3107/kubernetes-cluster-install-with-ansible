terraform {
  required_version = ">= 1.10"
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 2.11.1"
    }
  }
}

resource "vsphere_folder" "parent_project_folder" {

    path = var.parent_project_folder_name
    type = "vm"
    datacenter_id = var.vsphere_datacenter_id
  
}

resource "vsphere_folder" "project_folder" {

    path = "${vsphere_folder.parent_project_folder.path}/${var.project_folder_name}"
    type = "vm"
    datacenter_id = var.vsphere_datacenter_id
  
}

