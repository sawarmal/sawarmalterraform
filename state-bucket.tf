resource "google_storage_bucket" "sawarmalbucket"  {
  name = "sawarmalbucket"
  force_destroy = true
  location      = var.region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
