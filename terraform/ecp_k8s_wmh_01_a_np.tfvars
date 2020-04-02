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