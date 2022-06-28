provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "myvik-tf-state-prod"
    prefix = "terraform/state"
  }
}
provider "google" {
  version     = "3.84.0"
  credentials = "${file(var.prashant_creds)}"
  project     = var.project_id
  region      = var.region
}

provider "google-beta" {
  version     = "3.84.0"
  credentials = "${file(var.prashant_creds)}"
  project     = var.project_id
  region      = var.region
}
