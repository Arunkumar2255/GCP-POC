terraform {
  required_version = ">= 1.3.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51.0"
    }
  }
}


resource "google_compute_instance" "private_vm" {
  name         = var.jump-host
  machine_type = var.jump-machine 
  zone         = var.zone
  project = var.project
  tags         = ["private-vm"]
  # metadata_startup_script = var.pritunlfile

  boot_disk {
    initialize_params{
      image = var.vm_image
    }
  }

  network_interface {
    network = var.vpc
    subnetwork = var.gke_subnet_name
    access_config {
      // Ephemeral IP will be automatically assigned
    }
  }
}


