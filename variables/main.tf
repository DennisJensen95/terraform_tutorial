resource "local_file" "pet" {
  filename = "/${path.cwd}/pets.txt"
  content  = "My favorite dog is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = var.length
}
