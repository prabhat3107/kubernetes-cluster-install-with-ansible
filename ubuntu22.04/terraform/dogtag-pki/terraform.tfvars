
dc_name = "SriAuroNetDC_01"

vcenter_host_name = "vcenter1.sriauronet.lan"

vcenter_user_name = "administrator@sriauronet.lan"

vcneter_user_password = "Beauty!123"

#resource_pool_name = "SriAuroNetDC_01_C01/Resources"
resource_pool_name = "SriAuroNetDC_01_C01/Resources"

vsphere_datastore_name = "datastore2"


vm_network_name_1 = "VMNet1"
vm_network_name_2 = "VMInternalNet1"
vm_network_name_3 = "VMInternalNet2"
vm_network_name_4 = "VMInternalNet3"
vm_template_name  = "cos9-template"

project_folder_name = "Infra_VMs"

vm_user_name     = "prabhat"
vm_user_password = "Beauty!123"

vm_domain_name = "sriauronet.lan"

vm_ipv4_netmask = 24
dns_server_list = ["10.10.1.1"]
dns_suffix_list = ["sriauronet.lan"]
vm_ipv4_gateway = "10.10.1.1"


vm_ipv4_gateway_2 = "10.10.1.1"

vm_list = [
  {
    vm_name      = "dtpki"
    vm_host_name = "dtpki"
    vm_num_cpus  = 4
    vm_memory    = 8192
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.51"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.51"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.51"
        ipv4_netmask = 24
      },
    ]
  }

]


network_node_vm_list = [

]

provisioning_commands = [
  "sudo apt update -y",
  "sudo apt upgrade -y"
]