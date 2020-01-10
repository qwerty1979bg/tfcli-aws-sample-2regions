provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

resource "aws_security_group" "yolo-frankfurt" {
  name        = "yolo"
  description = "Sample security group that only lives once"
}

resource "aws_security_group" "kcco-london" {
  name        = "kcco"
  description = "Sample security group that keeps calm and carries on"

  provider = aws.eu-west-2
}
