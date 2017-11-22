provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "172.23.0.0/16"

  tags {
    Name = "Simon"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "172.23.1.0/24"

  tags {
    Name = "Simon"
  }
}
