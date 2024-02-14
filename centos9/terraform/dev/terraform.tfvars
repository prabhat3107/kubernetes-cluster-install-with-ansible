
dc_name = "SriAuronetHDC1"

vcenter_host_name = "vcenter1.sriauronet.lan"

vcenter_user_name = "administrator@sriauronet.local"

vcneter_user_password = "Beauty!123"

resource_pool_name = "10.10.1.11/Resources"

vsphere_datastore_name =  "datastore2"


vm_network_name_1 = "ExternetlNet"
vm_network_name_2 = "VMNet-G1"
vm_network_name_3 = "VMNet-G2"
vm_network_name_4 = "VMNet-G3"
vm_template_name = "centos8-stream-template"


parent_project_folder_name="KubernetesLabs"
project_folder_name="MultiNode-cos8-Lab1"

vm_user_name = "prabhat"
vm_user_password = "Beauty!123"

vm_domain_name = "sriauronet.lan"

vm_ipv4_netmask = 24
dns_server_list = ["10.10.1.1"]
dns_suffix_list = ["sriauronet.lan"]
vm_ipv4_gateway = "10.10.1.1"


vm_ipv4_gateway_2 = "10.10.1.1"

vm_list = [
    {
        vm_name = "k8s-cos8-master1"
        vm_host_name = "k8s-cos8-master1.sriauronet.lan"
        vm_num_cpus = 4
        vm_memory = 8192
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
                }
            ]

    },
        {
        vm_name = "k8s-cos8-master2"
        vm_host_name = "k8s-cos8-master2.sriauronet.lan"
        vm_num_cpus = 4
        vm_memory = 8192
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.52"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.52"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.52"
                    ipv4_netmask = 24
                }
            ]

    },

    {
        vm_name = "k8s-cos8-wn1"
        vm_host_name = "k8s-cos8-wn1.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.53"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.53"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.53"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos8-wn2"
        vm_host_name = "k8s-cos8-wn2.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.54"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.54"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.54"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos8-wn3"
        vm_host_name = "k8s-cos8-wn3.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.55"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.55"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.55"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos8-wn4"
        vm_host_name = "k8s-cos8-wn4.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.56"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.56"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.56"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos8-wn5"
        vm_host_name = "k8s-cos8-wn5.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.57"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.57"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.57"
                    ipv4_netmask = 24
                }
            ]
 
    }
  ]


network_node_vm_list = [

  ]

provisioning_commands = [
     "sudo dnf update -y"
    ]