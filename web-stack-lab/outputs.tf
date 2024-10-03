# outputs.tf

output "load_balancer_public_ip" {
  description = "The public IP address of the load balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "web_server_ips" {
  description = "Private IP addresses of the web servers"
  value       = azurerm_linux_virtual_machine.web_vm[*].private_ip_address
}
