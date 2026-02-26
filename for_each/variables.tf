# Map
/* variable "instances" {
  type = map 
  default = {
    mongodb = "t3.micro"
    mysql = "t3.small"
    user = "t3.micro"
    shipping = "t3.small"
  }
} */

# This should be converted into set
variable "instances" {
    type = list 
    default = ["mongodb", "catalogue"] 
}

variable "zone_id" {
    default = "Z0178053H1TTSPYHM852"
}

variable "domain_name" {
    default = "akviklabs.online"
  
}