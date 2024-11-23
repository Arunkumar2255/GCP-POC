terraform {
  required_version = ">= 1.3.0, < 2.0.0"
 backend "gcs" {
   bucket  = "gcp-poc-project1"
   prefix  = "terraform/state"
 }
}
