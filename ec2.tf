resource "aws_instance" "server1" {
  ami                     = "ami-02f3f602d23f1659d"
  instance_type           = "t2.micro"
  key_name                ="ykey"
  tags={
    Name="server1"
}
}
