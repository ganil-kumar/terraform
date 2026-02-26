variable "instances" {
    type = list
    default = ["mongodb", "catalogue", "redis", "user", "cart", "mysql", "shipping", "rabbitmq", "payment", "frontend"]
  
}

# replace w/ zone_id & domain_name
variable "zone_id" {
    default = "Z0178053H1TTSPYHM852"
}

variable "domain_name" {
    default = "akviklabs.online"
  
}

# for_each-loop

variable "fruits" {
    type = list(string) # list allows and maintains duplicate values
    default = ["Mango", "Apple", "Banana", "Apple", "Orange"]
  
}

variable "fruits_set" {
    type = set(string) # set automatically removes all duplicate values to ensure uniqueness
    default = ["Mango", "Apple", "Banana", "Apple", "Orange"]
  
}