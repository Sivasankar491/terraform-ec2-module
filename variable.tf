variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    validation {
      condition =   condition == contains(["t2.micro", "t3.micro"], var.instance_type)
      error_message = "We cancreate instances only with t2.micro and t3.micro to avoid unncecessory cost"

    }
}
