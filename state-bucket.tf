terraform {
  backend "gcs" {
    credentials = "secrets.prashant_creds"
    bucket = "prashant-state-bucket"
    prefix = "terraform/state"
  }
}
