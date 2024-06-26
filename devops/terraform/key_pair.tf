# provision key 
resource "aws_key_pair" "ec2-key-pair" {
  key_name   = var.KEY_PAIR_NAME
  public_key = file("${path.module}/pub-keys/${var.PUBLIC_KEY}")
}


# print out some output
output "key_name" {
  value = aws_key_pair.ec2-key-pair.key_name
}
