provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.credentials
}

terraform {
  backend "gcs" {
    bucket = "myvik-tf-state-prod"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  version     = "3.84.0"
  credentials = var.credentials
  project     = var.project_id
  region      = var.region
}
