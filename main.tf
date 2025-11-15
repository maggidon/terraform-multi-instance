resource "aws_security_group" "multi_sg" {
  name        = "multi-instance-sg"
  description = "Allow SSH and all internal traffic"

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow all traffic within VPC"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "multi_instance" {
  count         = var.instance_count
  ami           = "ami-0c76bd4bd2718c7c4" # Ubuntu 22.04 LTS (eu-west-2)
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.multi_sg.id]

  tags = {
    Name = "server-${count.index + 1}"
  }
}
