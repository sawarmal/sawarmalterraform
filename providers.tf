provider "google" {
  project = var.project_id
  credentials = var.creds
  region  = var.region
  service_account = var.service_account
}

terraform {
  backend "gcs" {
    bucket = "prashant-terra-buck"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  service_account = var.service_account
  credentials = var.creds
  project     = var.project_id
  region      = var.region
}
