resource "google_compute_network" "vpc_network" {
  provider = google.google-priv

  name                    = "vpc-priv"
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "rules" {
  provider = google.google-priv

  name        = "http"
  network     = google_compute_network.vpc_network.name
  description = "firewall rule for http"
  priority    = "1000"

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "8080"
    ]
  }

  source_tags = ["priv"]
  target_tags = ["web"]
}
