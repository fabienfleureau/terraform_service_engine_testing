# Use output to print the variable content.
output "printed_message" {
  description = "Prints the content of the variable"
  value       = var.content
}

resource "null_resource" "staging_delay" {
  provisioner "local-exec" {
    command = "sleep ${var.sleep_duration}"
  }

  # Always recreate (equivalent to original behavior)
  triggers = {
    timestamp = timestamp()
  }
}
