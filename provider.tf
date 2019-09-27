provider "google" {
  project = "${var.PROJECT_ID}"
  region  = "europe-west1"
  version = "2.6.0"
}
