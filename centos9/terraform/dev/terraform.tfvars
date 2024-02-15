
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
vm_template_name = "centos9-stream-template"


parent_project_folder_name="KubernetesLabs"
project_folder_name="MultiNode-cos9-Lab1"

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
        vm_name = "k8s-cos9-master1"
        vm_host_name = "k8s-cos9-master1.sriauronet.lan"
        vm_num_cpus = 4
        vm_memory = 8192
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.41"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.41"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.41"
                    ipv4_netmask = 24
                }
            ]

    },
        {
        vm_name = "k8s-cos9-master2"
        vm_host_name = "k8s-cos9-master2.sriauronet.lan"
        vm_num_cpus = 4
        vm_memory = 8192
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.42"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.42"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.42"
                    ipv4_netmask = 24
                }
            ]

    },

    {
        vm_name = "k8s-cos9-wn1"
        vm_host_name = "k8s-cos9-wn1.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.43"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.43"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.43"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos9-wn2"
        vm_host_name = "k8s-cos9-wn2.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.44"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.44"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.44"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos9-wn3"
        vm_host_name = "k8s-cos9-wn3.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.45"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.45"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.45"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos9-wn4"
        vm_host_name = "k8s-cos9-wn4.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.46"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.46"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.46"
                    ipv4_netmask = 24
                }
            ]
 
    },
    {
        vm_name = "k8s-cos9-wn5"
        vm_host_name = "k8s-cos9-wn5.sriauronet.lan"
        vm_num_cpus = 2
        vm_memory = 4096
        vm_nic_config = [
                {
                    ipv4_address = "10.10.1.47"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "172.16.0.47"
                    ipv4_netmask = 24
                },
                {
                    ipv4_address = "10.1.3.47"
                    ipv4_netmask = 24
                }
            ]
 
    }
  ]


network_node_vm_list = [

  ]

#provisioning_commands = [
#     "sudo dnf update -y"
#    ]