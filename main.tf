provider "google" {
  project = "qwiklabs-gcp-00-f1efdfe335c0"  # Replace with your GCP project ID
  region  = "us-west1"            # Replace with your desired GCP region
}

terraform {
  backend "gcs" {
    bucket  = "jenkins-state-rob"  # Replace with the name of your GCS bucket
    prefix  = "terraform/state"    # The folder path in the bucket
  }
}

resource "google_compute_network" "example_vpc1" {
  name                    = "example-vpc1"
  auto_create_subnetworks = true  # Automatically creates subnets for all regions
}

