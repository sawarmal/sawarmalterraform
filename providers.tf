provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.service_account
}

terraform {
  backend "gcs" {
    bucket = "prashant-terra-buck"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  credentials = var.service_account
  project     = var.project_id
  region      = var.region
}
