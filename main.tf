resource "google_dataflow_job" "big_data_job" {
  name         = var.df-name
  project      = var.project_id
  kms_key_name = "projects/modular-scout-345114/locations/global/keyRings/keyring-example/cryptoKeys/crypto-key-example"
  service_account_email = null # "compute@developer.gserviceaccount.com" #"composer-test-sa2@modular-scout-345114.iam.gserviceaccount.com"
  ip_configuration = null # "WORKER_IP_PUBLIC" # "WORKER_IP_PRIVATE"
  template_gcs_path = "gs://my-bucket-df/templates/template_file/latest_Word_Count"
  temp_gcs_location = "gs://my-bucket-df/tmp_dir"
  
  labels = {
   gcp_region = "us-central1"
   owner = "wf"
   application_division = "pci"
   application_name = ""
   application_role = "auth"
   environment = "dev"
   au = ""
   created = "20211001"
  }
  
}
