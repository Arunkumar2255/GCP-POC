#GCP Provider
provider "google" {
  # credentials = file("Terraform-GKE/gcp-cicd-devsecops.json")
  project = var.project
  region  = var.region
  zone    = var.zone
}
# Optional: Configure google-beta if needed
provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

terraform {
  required_version = ">= 1.3.0" # Adjust to your preferred version
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
   }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.51.0"
   }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0" # Specify the desired version
    }
  }
}
