output "instance_name" {
  description = "VM instance name"
  value       = google_compute_instance.vm.name
}

output "instance_id" {
  description = "VM instance ID"
  value       = google_compute_instance.vm.id
}

output "internal_ip" {
  description = "VM internal IP"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "external_ip" {
  description = "VM external IP"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}
