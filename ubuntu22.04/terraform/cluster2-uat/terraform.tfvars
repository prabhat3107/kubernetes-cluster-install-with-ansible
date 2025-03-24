
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
vm_template_name  = "userver-22.04-lts-template"

project_folder_name = "KubernetesLabs/k8su-u22.04"

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
    vm_name      = "k8su-master1"
    vm_host_name = "k8su-master1"
    vm_num_cpus  = 4
    vm_memory    = 8192
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.111"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.111"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.111"
        ipv4_netmask = 24
      },
    ]

  },
  {
    vm_name      = "k8su-master2"
    vm_host_name = "k8su-master2"
    vm_num_cpus  = 4
    vm_memory    = 8192
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.112"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.112"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.112"
        ipv4_netmask = 24
      },
    ]

  },

  {
    vm_name      = "k8su-wn1"
    vm_host_name = "k8su-wn1"
    vm_num_cpus  = 2
    vm_memory    = 4096
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.91"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.91"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.91"
        ipv4_netmask = 24
      },
    ]

  },
  {
    vm_name      = "k8su-wn2"
    vm_host_name = "k8su-wn2"
    vm_num_cpus  = 2
    vm_memory    = 4096
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.92"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.92"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.92"
        ipv4_netmask = 24
      },
    ]

  },
  {
    vm_name      = "k8su-wn3"
    vm_host_name = "k8su-wn3"
    vm_num_cpus  = 2
    vm_memory    = 4096
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.93"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.93"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.93"
        ipv4_netmask = 24
      },
    ]

  },
  {
    vm_name      = "k8su-wn4"
    vm_host_name = "k8su-wn4"
    vm_num_cpus  = 2
    vm_memory    = 4096
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.94"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.94"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.94"
        ipv4_netmask = 24
      },
    ]

  },
  {
    vm_name      = "k8su-wn5"
    vm_host_name = "k8su-wn5"
    vm_num_cpus  = 2
    vm_memory    = 4096
    vm_nic_config = [
      {
        ipv4_address = "10.10.1.95"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "172.16.0.95"
        ipv4_netmask = 24
      },
      {
        ipv4_address = "10.1.3.95"
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