terraform {
  backend "gcs" {
    credentials = "path for json key"
    bucket = "prashant-state-bucket"
    prefix = "terraform/state"
  }
}