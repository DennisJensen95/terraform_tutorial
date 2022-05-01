resource "local_file" "pet" {
  filename        = "/${path.cwd}/pets.txt"
  content         = "We love dogs!"
  file_permission = "0700"
}

