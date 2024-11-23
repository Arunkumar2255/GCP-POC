terraform {
  required_version = ">= 1.3.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51.0"
    }
  }
}

resource "google_artifact_registry_repository" "repo" {

  repository_id = var.repository_id
  location      = var.location
  format        = var.format
  project       = var.project_id
  description   = var.description
}