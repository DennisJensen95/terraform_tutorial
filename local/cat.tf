resource "local_file" "cat" {
  filename = "/${path.cwd}/cat.txt"
  content  = "I do not like cats."
}
