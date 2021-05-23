provider "aws" {
  region  = "us-east-1"
}

module "ALB-CloudStartKit" {
source = "git@github.com:Accenture-Dev-private/module_alb.git"
interval                           = 10
path                               = "/var/www/html/index.html"
protocol                           = "HTTP"
timeout                            = 5
healthy_threshold                  = 5 
unhealthy_threshold                = 2

#name                               = CloudStartKit-ALB
port                               = 80
protocol-tg-CloudStartKit          = "HTTP"
target_type                        = "instance"  
vpc_id                             = "vpc-0b1805b1719350c02"

#aws_lb_target_group_attachment1

instance1_id                       = "i-09748b660e5c2c6c9"
port-alb-target-group-attachment1  = 80
instance2_id                       = "i-0e179c749f7f4e371"
port-alb-target-group-attachment2  = 80
instance3_id                       = "i-0ab9bca2fb0cc0e38"
port-alb-target-group-attachment3  = 80
instance4_id                       = "i-0ea1f8ef56670def4"
port-alb-target-group-attachment4  = 80

#aws_lb

name-alb-CloudStartKit             = "alb-CloudStartKit"
internal                           = false
security_groups                    = "sg-0f4c6a9de4fd3d7bc"
subnet1                           = "subnet-039fd9836be0de678"
subnet2                           = "subnet-0c46e7534625b6ffb"
ip_address_type                    = "ipv4"
load_balancer_type                 = "application"

#aws_lb_listener

port-alb-listener-CloudStartKit     = 80
protocol-alb-listner-CloudStartKit = "HTTP"
type                               = "forward"

}