project_id         = "prashant-terraform"
region             = "us-central1"
zones              = ["us-central1-a","us-central1-b","us-central1-c"]
name               = "prashant-gke"
machine_type       = "g1-small"
min_count          = 3
max_count          = 5
disk_size_gb       = 25
service_account    = "prashant-terraform@prashant-terraform.iam.gserviceaccount.com"
creds = "./prashant-terraform-209ac1c0b8e8.json"
initial_node_count = 3
repo_name = "prashant-demo"

