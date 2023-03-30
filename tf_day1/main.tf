// creation of resources


// creation of a file


resource "local_file" "file-block" {
  content  = "hello world!" // optional 
  filename = "hello.py"     // necessary
}

