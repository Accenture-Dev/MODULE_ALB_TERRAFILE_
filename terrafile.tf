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
vpc_id                             = "vpc-0351646fc3e05b6c3"

#aws_lb_target_group_attachment1

instance1_id                       = "i-07bcf26efcddb6b2c"
port-alb-target-group-attachment1  = 80
instance2_id                       = "i-0ce88729fa3ffa781"
port-alb-target-group-attachment2  = 80
instance3_id                       = "i-0b4d08102282f85cd"
port-alb-target-group-attachment3  = 80
instance4_id                       = "i-0335c3d33614ea156"
port-alb-target-group-attachment4  = 80

#aws_lb

name-alb-CloudStartKit             = "alb-CloudStartKit"
internal                           = false
security_groups                    = "sg-05af715c6f857d468"
subnet1                           = "subnet-0299697f36211c2c8"
subnet2                           = "subnet-099d5b7ea68374991"
ip_address_type                    = "ipv4"
load_balancer_type                 = "application"

#aws_lb_listener

port-alb-listener-CloudStartKit     = 80
protocol-alb-listner-CloudStartKit = "HTTP"
type                               = "forward"

}