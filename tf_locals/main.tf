// creation of resources


// creation of a file


locals {
  content = "<h3>hello world i am pratham</h3>"
}

resource "local_file" "file-block" {
  content  = local.content // optional 
  filename = "hello.html"  // necessary
}

