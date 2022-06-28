project_id         = "august-shield-345908"
region             = "us-central1"
zones              = ["us-central1-a","us-central1-b","us-central1-c"]
name               = "gke-cluster"
machine_type       = "g1-small"
min_count          = 3
max_count          = 5
disk_size_gb       = 25
service_account    = "844689686294-compute@developer.gserviceaccount.com"
creds = "./august-shield-345908-1bc0fb7b3c60.json"
initial_node_count = 3
repo_name = "sawarmalterraform"

