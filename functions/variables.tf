variable "comman_tags" {
    default = {
        project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Name = "funcations-demo"
        Environment = "prod"
    }
}

variable "sg_tags" {
    default = {
        Name = "funcations-demo-sg"
    }
  
}