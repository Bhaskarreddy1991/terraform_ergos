# // All Private subnets association

# resource "aws_route_table_association" "prisub_asso" {
#   count          = local.y
#   subnet_id      = aws_subnet.pri_sub.*.id[count.index]
#   route_table_id = aws_route_table.pri_route.id
# }