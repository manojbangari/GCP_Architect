terraform {
  backend "gcs" {
    bucket = "manojbsbucket1"
    prefix = "dev"
  }
}
