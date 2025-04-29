resource "aws_key_pair" "my_key" {
  key_name   = "my-ec2-key"
  public_key = file("~/.ssh/id_ed25519.pub")  
}


resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = var.security_group_ids
  associate_public_ip_address = true

  tags = {
    Name = var.name
  }
}
