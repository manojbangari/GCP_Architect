resource "google_compute_instance" "vm" {
  name         = var.instance_name
  project      = var.project_id
  zone         = var.zone
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
      size  = 20
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = var.network

    access_config {
      # Ephemeral public IP
    }
  }

  labels = {
    environment = "dev"
    managed-by  = "terraform"
  }
}
