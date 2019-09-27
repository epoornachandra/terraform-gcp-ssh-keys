resource "google_compute_project_metadata_item" "sshkeys" {
  key = "ssh-keys"
  value = "${join("\n", var.SSH_PUB_KEYS)}"
}
