resource "google_storage_bucket" "terra-state-buck" {
  force_destroy = true
  service_account = var.service_account
  location      = var.location
  storage_class = "STANDARD"
  prefix      = "terraform/state"
  versioning {
    enabled = true
  }
}
