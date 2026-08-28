output "vm_name" {
  value = module.dev_vm.instance_name
}

output "vm_id" {
  value = module.dev_vm.instance_id
}

output "vm_internal_ip" {
  value = module.dev_vm.internal_ip
}

output "vm_external_ip" {
  value = module.dev_vm.external_ip
}
