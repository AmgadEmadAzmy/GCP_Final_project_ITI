resource "google_compute_instance" "vm_instance" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "asia-east1"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  
  network_interface {
    network = google_compute_network.vpc_network.name
    #private subnet
    subnetwork = google_compute_subnetwork.public-subnetwork.name

    access_config {
      // Ephemeral public IP
    }
  }
 }
