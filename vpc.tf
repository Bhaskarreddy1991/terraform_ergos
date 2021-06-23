# resource "aws_vpc" "main" {
#   cidr_block       = var.vpc_cidr
#   instance_tenancy = "default"

#   tags = {
#     Name        = "my-vpc-01-${local.ws}"
#     Location    = "Bangalore"
#     Environment = local.ws
#     account_id  = local.x
#   }
# }

