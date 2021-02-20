provider "google" {
  project     = "united-reason-303612"
  region      = "us-central1"
  version = "3.57.0"
}

module "bigquery-create-ds" {
    source = "../../../modules/data-storage/bigquery-create-ds"
    env="Dev"
    dataset_name="priceindex"
    location="EU"
    expiration_time_in_ms=var.ds-expiration[var.living-time]
}
