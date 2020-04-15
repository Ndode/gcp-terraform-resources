provider "google" {
credentials     = "/home/dione/gcp-terraform/terraform.json"
project         = "${var.project_id}"
region          = "${var.region}"

}
terraform {
   backend "gcs" {
      bucket	= "myterraformgcpbucket"
      credentials = "/home/dione/gcp-terraform/terraform.json"
}
}

resource "google_compute_network" "vpc_network" {
    name        = "vpc-network"
    description = "vpc for my project resources"
    auto_create_subnetworks = "false"
    routing_mode    = "GLOBAL"

}
