resource "google_storage_bucket" "bucket" {
  name = "test-bucket-random-001122"
  service_account    = var.service_account
}

resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket-random-001123"
  service_account    = var.service_account
}
