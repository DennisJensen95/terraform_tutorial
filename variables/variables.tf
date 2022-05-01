variable "filename" {
  default     = "/root/pets.txt"
  type        = string
  description = "Path of placement of pet file"
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
