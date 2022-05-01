variable "filename" {
  default     = "/root/pets.txt"
  type        = string
  description = "Path of placement of pet file"
}

variable "test-pets" {
  type=set(string)

  default = [
    "./test_dog.txt",
    "./test_cat.txt",
    "./test_hamster.txt"
  ]
  
}

variable "content" {
  default     = "We love dogs!"
  type        = string
  description = "Content of pets file"
}

variable "prefix" {
  default = "Mrs"
}

variable "seperator" {
  default = "."
}

variable "length" {
  default = "1"
}
