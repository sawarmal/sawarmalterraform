provider "google" {
  project = var.project_id
  region  = var.region
  version     = "3.84.0"
  credentials = "${file(var.PRASHANT_CREDS)}"
}

terraform {
  backend "gcs" {
    bucket = "myvik-tf-state-prod"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  version     = "3.84.0"
  credentials = "${file(var.PRASHANT_CREDS)}"
  project     = var.project_id
  region      = var.region
}
