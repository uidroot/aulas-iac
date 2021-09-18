resource "aws_eip" "myeip01" {
  vpc = "true"
}

resource "aws_eip" "myeip02" {
  vpc      = "true"
  provider = aws.sao-paulo
}

