resource "aws_instance" "module" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = "EC2-module"
  }
}