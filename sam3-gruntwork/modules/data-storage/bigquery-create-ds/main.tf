
resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "ds${var.dataset_name}${var.env}"
  friendly_name               = "${var.dataset_name}-${var.env}"
  description                 = "${var.dataset_name} is being created on ${var.location} location for ${var.env} production environment."
  location                    = var.location
  default_table_expiration_ms = var.expiration_time_in_ms

  labels = {
    env = "default"
  }
}