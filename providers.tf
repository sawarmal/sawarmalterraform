provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.credentials
}

terraform {
  backend "gcs" {
    bucket = "prashant-terra-buck"
    prefix = "terraform/state"
  }
}

provider "google-beta" {
  credentials = var.credentials
  project     = var.project_id
  region      = var.region
}
