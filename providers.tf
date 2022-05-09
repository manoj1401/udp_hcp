
provider "google" {
  project = var.project_id
#  credentials = file (var.gcp_auth_file)
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "myvik-tf-state-prod"
    prefix = "terraform/state"
  }
}