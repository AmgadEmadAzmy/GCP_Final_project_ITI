terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("ace-tracker-375011-82d2cb32e9ed.json")

  project = "ace-tracker-375011"
  region  = "asia-east1"
  zone    = "asia-east1-b"
}





