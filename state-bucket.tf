resource "google_storage_bucket" "terra-state-buck" {
  name          = "bucket-tfstate"
  force_destroy = false
  location      = "us-central1"
  storage_class = "STANDARD"
  prefix      = "terraform/state"
  versioning {
    enabled = true
  }
}
