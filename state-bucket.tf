resource "google_storage_bucket"  {
  name = "prashant-terra-buck"
  force_destroy = true
  creds = var.creds
  location      = var.region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
