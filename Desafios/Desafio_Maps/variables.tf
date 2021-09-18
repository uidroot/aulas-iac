variable "shapes_instances" {
    type = list
    default = ["t2.nano", "t2.micro", "t2.small", "t2.medium", "t3.nano", "t3.micro", "t3.small", "t3.medium"]
}

variable "AMI_instances" {
    type = map(string)
    default = { 
        "sa-east-1": "ami-gygy81218",
        "us-east-1": "ami-9821843",
        "ap-south-1": "ami-98291hunj"
    }
}

