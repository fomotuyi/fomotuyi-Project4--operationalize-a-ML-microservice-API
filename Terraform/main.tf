resource "local_file" "games" {
  filename = var.filename
  sensitive_content =  var.sensitive_content

}