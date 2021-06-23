# // launch ec2 instance in fifth private subnet

# resource "aws_instance" "my-ec2-ins2" {
#   ami                         = "ami-0d5eff06f840b45e9"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.pri_sub.*.id[4]
#   key_name                    = "demokepair"
#   vpc_security_group_ids      = [aws_security_group.my-sg.id]
#   user_data                   = file("./files/apache2.sh")

#   tags = {
#     Name = "instance_in_pri"
#   }
# }
