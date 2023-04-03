// creation of resources


// creation of a file


locals {
  content      = "<h3>hello world i am pratham</h3>"
  content_list = ["hello", "pratham"]
}

resource "local_file" "file-block" {
  content  = local.content // optional 
  filename = "hello.html"  // necessary
}



resource "local_file" "res2" {
  content  = local.content_list[0] // optional 
  filename = "hello2.html"         // necessary
}
