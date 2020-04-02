# Copyright 2020 Google LLC. This software is provided as is, without
# warranty or representation for any use or purpose. Your use of it is
# subject to your agreement with Google.


location                        = "australia-southeast1-a"
region                          = "australia-southeast1"
gcp_org                         = "anz.com"
project_id                      = "ecp-k8s-wmh-01-a-np-dd3184"
host_project_id                 = "anz-cs-network-np-3f46c8"
subnet_name                     = "ecp-k8s-wmh-01-a-np-dd3184-subnet-gke"
shared_vpc_name                 = "anz-cs-network-np-vpc"
master_ipv4_cidr_block          = "10.172.8.0/28"
enable_binary_authorization     = false
disable_http_load_balancing     = false
enable_intranode_visibility     = false
enable_vertical_pod_autoscaling = false
kubernetes_version              = "latest"
master_authorized_cidr_blocks = [
  {
    cidr_blocks = [
      {
        cidr_block   = "10.153.0.0/17"
        display_name = "ANZ VDI"
      },
      {
        cidr_block   = "10.157.0.0/17"
        display_name = "ANZ VDI 2"
      },
      {
        cidr_block   = "10.152.0.0/16"
        display_name = "ANZ DC Ranges #1 (Openshift MW in this range)"
      },
      {
        cidr_block   = "10.156.0.0/16"
        display_name = "ANZ DC Ranges #2 (Openshift TM in this range)"
      },
      {
        cidr_block   = "10.54.151.192/29"
        display_name = "ANZ L5 55 Collins St (NAT range 1)"
      },
      {
        cidr_block   = "10.54.151.200/31"
        display_name = "ANZ L5 55 Collins St (NAT range 2)"
      },
      {
        cidr_block   = "10.54.151.202/32"
        display_name = "ANZ L5 55 Collins St (NAT range 3)"
      },
      {
        cidr_block   = "10.52.39.234/32"
        display_name = "Bamboo Agent"
      },
      {
        cidr_block   = "10.149.9.0/24"
        display_name = "Cloud Build"
      }
    ]
  }
]


node_pool_name     = "small-pool"
initial_node_count = 3
max_pods_per_node  = 64
min_node_count     = 2
max_node_count     = 21
node_instance_type = "n1-standard-16"
node_disk_size_gb  = 50
labels = {
  "pool" = "small"
}

oauth_scopes = [
  "cloud-source-repos-ro",
  "cloud-platform"
]
