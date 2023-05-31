locals {
    name_prefix = var.env
    
    default_tags = {
        Enviroment = var.env
        Product    = var.product
    }
    
    asg_default_tags = [
    {
        key               = "Name"
        value             = "APP-ASG"
        propage_at_launch = "true"
    },
    {
        key   = "Enviroment"
        value = var.env
        propage_at_launch = "true"
    }
  ]
}
