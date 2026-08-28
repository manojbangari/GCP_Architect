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


module "network" {
  source = "../../modules/network"

  project_id   = var.project_id
  network_name = var.network_name
  subnet_name  = var.subnet_name
  region       = var.region
  subnet_cidr  = var.subnet_cidr
}
