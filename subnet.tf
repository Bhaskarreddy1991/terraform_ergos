
# # # creating public subnets

# resource "aws_subnet" "pub-sub" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)
#   count      = local.y

#   tags = {
#     Name        = "Public-subnet-${count.index + 1}-${local.ws}"
#     Costcenter  = "UNISYS-6754"
#     Environment = local.ws
#     account_id  = local.x

#   }
# }
# # creating privte subnets
# resource "aws_subnet" "pri_sub" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index + local.y)
#   count      = local.y

#   tags = {
#     Name        = "Private-subnet-${count.index + 1}-${local.ws}"
#     Costcenter  = "UNISYS-6754"
#     Environment = local.ws
#     account_id  = local.x

#   }
# }

# # tain command
# # resource "aws_subnet" "taint_sub" {
# #   vpc_id     = aws_vpc.main.id
# #   cidr_block = "10.0.192.0/20"
# #   tags = {
# #     Name       = "Private-subnet-taint"
# #     Costcenter = "UNISYS-6754"
# #   }
# # }

# # want this resource in dev/default environment only
# # resource "aws_subnet" "con_sub" {
# #   vpc_id     = aws_vpc.main.id
# #   cidr_block ="10.0.192.0/20"            
# #   count      = terraform.workspace == "default" ? 1 : 0

# #         tags = {
# #           Name        = "Private-subnet-${count.index + 1}-${local.ws}"
# #           Costcenter  = "UNISYS-6754"
# #           Environment = local.ws
# #           account_id  =local.x

# #         }
# # }



# # Creating Private subnet 1
# # resource "aws_subnet" "pri_sub" {
# #   vpc_id     = aws_vpc.main.id
# #   cidr_block = "10.0.1.0/24"

# #   tags = {
# #     Name        = "my-pri-subnet-01-${terraform.workspace}"
# #     Costcenter  = "UNISYS-6754"
# #     Environment = terraform.workspace
# #     account_id  = data.aws_caller_identity.current.account_id

# #   }
# # }