resource "google_storage_bucket" "prashant-terra-buck" {
  force_destroy = true
  service_account = var.service_account
  location      = var.region
  zones = var.zones
  storage_class = "STANDARD"
  prefix      = "terraform/state"
  versioning {
    enabled = true
  }
}
