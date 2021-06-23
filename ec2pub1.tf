# resource "aws_instance" "my-ec2-ins" {
#   ami                         = "ami-0d5eff06f840b45e9"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.pub-sub.*.id[0]
#   key_name                    = "demokepair"
#   vpc_security_group_ids      = [aws_security_group.my-sg.id]
#   user_data                   = file("./files/apache1.sh")

#   tags = {
#     Name = "Pub1-instance"
#   }
# }


# # security groups for ec2 instance
# resource "aws_security_group" "my-sg" {
#   name        = "my-sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description = "SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }

#   ingress {
#     description = "HTTP"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "mysg-all"
#   }
# }