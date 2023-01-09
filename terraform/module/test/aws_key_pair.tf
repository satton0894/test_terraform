resource "aws_key_pair" "keypair" {
  key_name   = "id_test_keypeir"
  public_key = file("./terraform/src/id_test_key.pub")

  tags = {
    Name    = "${var.project}-${var.environment}-keypair"
    Project = var.project
    Env     = var.environment
  }
}
