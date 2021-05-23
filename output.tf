output "load_balancer" {
  description = "Lista dos Ips públicos das instâncias"  
  value = module.ALB-CloudStartKit.load_balancer
}

