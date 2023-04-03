resource "local_file" "userInfo_txt_fiile" {
  content  = "Name: ${var.userName}"
  filename = "user.txt"
}
