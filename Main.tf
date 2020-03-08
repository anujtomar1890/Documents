
provider "aws" {
  profile  = "Anuj"
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "s3_test" {
  bucket="shivaamiacademy-1111122222"
  acl="private"
}

resource "aws_instance" "anuj-VM1" {
    ami= "ami-0620d12a9cf777c87"
    instance_type= "t2.micro"

tags = {
    Name="AnujVM-1" }
  depends_on= [aws_s3_bucket.s3_test]
}

resource "aws_eip" "ip" {
  vpc=true
  instance=aws_instance.anuj-VM1.id
  
}
