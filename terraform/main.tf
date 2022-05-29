provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "maquina_wp" {
    ami = "${var.amis["us-east-1-ubuntu18"]}"
    instance_type = "${var.instance_type.micro}"
    key_name = "chaveteste"
    tags = {
        Name = "referencia"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}