resource "aws_instance" "import" {
  instance_type = "t3.micro"
  ami = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [
     "sg-0604705a87db494fb"
   ]
  subnet_id = "subnet-0ed9e5eaae790a965"
  tags = {
              Name = "import-demo"
            }
}