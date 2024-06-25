resource "aws_instance" "web" {
  ami                         = "ami-0f58b397bc5c1f2e8"
  instance_type               = "t2.large"
  subnet_id                   = ""
  associate_public_ip_address = true
  key_name                    = "boombai"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]

  tags = {
    Name = "myown"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y fontconfig openjdk-17-jre
              java -version
              
              sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
                https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
              echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
                https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
                /etc/apt/sources.list.d/jenkins.list > /dev/null
              sudo apt-get update
              sudo apt-get install -y jenkins
              
              sudo systemctl enable jenkins
              EOF
}

resource "aws_volume_attachment" "myown_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.myown-storage.id
  instance_id = aws_instance.web.id
}
