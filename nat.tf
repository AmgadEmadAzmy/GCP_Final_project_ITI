resource "google_compute_router" "router" {
  name    = "my-router"
  region  = "asia-east1"
  network = google_compute_network.vpc_network.name

  bgp {
    asn = 64514
  }
}

resource "google_compute_router_nat" "nat" {
  name                               = "my-router-nat"
  router                             = google_compute_router.router.name
  region                             = "asia-east1"
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  log_config {
    enable = false
    filter = "ERRORS_ONLY"
  }
  
  subnetwork{
  name="management-subnet"
  source_ip_ranges_to_nat=["ALL_IP_RANGES"]
  
  }
}
