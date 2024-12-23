variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    validation {
      condition = contains(["t2.micro", "t3.micro"], var.instance_type)
      error_message = "We should create instances only with t2.micro and t3.micro to avoid unncecessory cost"

    }
}

# variable "security_group" {
#     type = list
# }
