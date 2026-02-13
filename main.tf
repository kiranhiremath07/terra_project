resource "aws_instance" "my_ec2" {
    ami=var.ami_id
    instance_type = var.instance_type
    key_name = var.pem_key
    tags={
        Name="terra_ec2"
    }
  
  depends_on = [ aws_instance.my_ec2_1 ]
}
resource "aws_instance" "my_ec2_1" {
    ami=var.ami_id
    instance_type = var.instance_type
    key_name = var.pem_key
    tags={
        Name="terra_ec2_New"
    }
  
}

resource "tls_private_key" "new_pem_key"{
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "name" {
    key_name = "terra_pem"
    public_key =tls_private_key.new_pem_key.public_key_openssh
  
}