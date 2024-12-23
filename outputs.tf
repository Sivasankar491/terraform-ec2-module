output "ec2_private_ip" {
    value = aws_instance.module.private_ip
}

output "ec2_public_ip" {
    value = aws_instance.module.public_ip
}

output "sg_info" {
    value = data.aws_security_group.selected.id
}