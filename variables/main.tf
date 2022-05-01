resource "local_file" "pet" {
  filename = "/${path.cwd}/pets.txt"
  content  = "${data.local_file.dog.content}\nMy favorite dog is ${random_pet.my-pet.id}"

  depends_on = [
    random_pet.my-pet
  ]
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "test-pet" {
  filename = each.value
  content  = "Testing here"
  for_each = var.test-pets
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.seperator
  length    = var.length
}

output "pet-name" {
  value       = random_pet.my-pet
  description = "Record value of the pet name"
}

data "local_file" "dog" {
  filename = "/${path.cwd}/dogs.txt"

}
