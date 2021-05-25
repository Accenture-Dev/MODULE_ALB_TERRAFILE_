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
vpc_id                             = "vpc-0807031a2149999ea"

#aws_lb_target_group_attachment1

instance1_id                       = "i-0f36953401abcdc94"
port-alb-target-group-attachment1  = 80
instance2_id                       = "i-010b825aa0508c27a"
port-alb-target-group-attachment2  = 80
instance3_id                       = "i-0b034f29b3d25af7a"
port-alb-target-group-attachment3  = 80
instance4_id                       = "i-0fafe0f5cfeb13830"
port-alb-target-group-attachment4  = 80

#aws_lb

name-alb-CloudStartKit             = "alb-CloudStartKit"
internal                           = false
security_groups                    = "sg-0355db4a84bf000f4"
subnet1                           = "subnet-05ef9eaeabf2a9e91"
subnet2                           = "subnet-0b7a26e010189d050"
ip_address_type                    = "ipv4"
load_balancer_type                 = "application"

#aws_lb_listener

port-alb-listener-CloudStartKit     = 80
protocol-alb-listner-CloudStartKit = "HTTP"
type                               = "forward"

}