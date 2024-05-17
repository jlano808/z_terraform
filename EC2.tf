resource "aws_instance" "ansible" {
  ami                         = "ami-0b31610f5f260593a"
  associate_public_ip_address = true
  ebs_optimized               = true
  instance_type               = "t4g.micro"
  key_name                    = "keyz"
  monitoring                  = true
  security_groups             = ["sg-02636fcc3a863cef6"]
  subnet_id                   = "subnet-003424319a7455aef"

  metadata_options {
    http_tokens = "required"
  }
  tags = {
    Name = "Ansible"
  }
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  associate_public_ip_address = true
  ebs_optimized               = true
  instance_type               = "t4g.micro"
  key_name                    = "keyz"
  monitoring                  = true
  security_groups             = ["sg-02636fcc3a863cef6"]
  subnet_id                   = "subnet-003424319a7455aef"

  metadata_options {
    http_tokens = "required"
  }
  tags = {
    Name = "Web"
  }
}
