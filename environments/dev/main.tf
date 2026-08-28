module "dev_vm" {
  source = "../../modules/compute-instance"

  project_id    = var.project_id
  region        = var.region
  zone          = var.zone
  instance_name = var.instance_name
  machine_type  = var.machine_type
  image         = var.image
  network       = var.network
}
