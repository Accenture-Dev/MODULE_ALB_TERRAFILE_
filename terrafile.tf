provider "aws" {
  region  = "us-east-1"
}

module "ALB-CloudStartKit" {
source = "git@github.com:Accenture-Dev-private/module_alb.git"
interval                           = ""
path                               = ""
protocol                           = ""
timeout                            = ""
healthy_threshold                  = ""
unhealthy_threshold                = ""

#name                               = CloudStartKit-ALB
port                               = ""
protocol-tg-CloudStartKit          = ""
target_type                        = ""  
vpc_id                             = ""

#aws_lb_target_group_attachment1

instance1_id                       = ""
port-alb-target-group-attachment1  = ""
instance2_id                       = ""
port-alb-target-group-attachment2  = ""
instance3_id                       = ""
port-alb-target-group-attachment3  = ""
instance4_id                       = ""
port-alb-target-group-attachment4  = ""

#aws_lb

name-alb-CloudStartKit             = ""
internal                           = ""
security_groups                    = ""
subnet1                           = ""
subnet2                           = ""
ip_address_type                    = ""
load_balancer_type                 = ""

#aws_lb_listener

port-alb-listener-CloudStartKit     = ""
protocol-alb-listner-CloudStartKit = ""
type                               = ""

}