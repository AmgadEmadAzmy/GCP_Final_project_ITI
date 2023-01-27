// Create Subnet-1
resource "google_compute_subnetwork" "public-subnetwork" {
 name          = "management-subnet"
 ip_cidr_range = "10.0.0.0/24"
 network       = google_compute_network.vpc_network.name
 # depends_on    = ["google_compute_network.vpc"]
 region      = "asia-east1"
}

// Create Subnet-2
resource "google_compute_subnetwork" "private-subnetwork" {
 name          = "restricted-subnet"
 ip_cidr_range = "10.1.0.0/24"
 network       = google_compute_network.vpc_network.name
 # depends_on    = ["google_compute_network.vpc"]
 region      = "asia-east1"
 private_ip_google_access = "true"
}
