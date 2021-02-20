provider "google" {
  project     = "united-reason-303612"
  region      = "us-central1"
  #zone        = "australia-southeast1-a"
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset1"
  friendly_name               = "friendly name2"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

  #access {
  #  role          = "OWNER"
 #   user_by_email = google_service_account.bqowner.email
 # }

 #  access {
 #   role   = "READER"
 #   domain = "hashicorp.com"
 # }
}

#resource "google_service_account" "bqowner" {
#  account_id = "bqowner2"
#}