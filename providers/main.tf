resource "local_file" "pet" {
  filename = "/${path.cwd}/pets.txt"
  content  = "We love dogs"
}

resource "random_pet" "my-pet" {
  prefix    = "Mrs"
  separator = "."
  length    = "1"
}
