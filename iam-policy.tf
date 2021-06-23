// Policy for ec2 instance
resource "aws_iam_role_policy" "ec2_policy" {
  name = "terraform-demo-ec2_policy"
  role = aws_iam_role.role.id
  policy =file("./files/ec2-policy.json")
}

// IAM role policy attachment to the resource

resource "aws_iam_role" "role" {
  name = "terraform-demo-role"

  assume_role_policy =file("./files/assume_policy.json")
}


// IAM instance profile

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.role.name
}

// ec2 instance
resource "aws_instance" "iam_ec2" {
  ami           = "ami-0d5eff06f840b45e9" 
  instance_type = "t2.micro"
  iam_instance_profile=aws_iam_instance_profile.ec2_profile.name

    tags={
        Name= "IAM-role-attach"

    }
}
