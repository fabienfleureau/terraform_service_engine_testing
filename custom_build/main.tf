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

data "external" "fortune_cowsay" {
  program = ["sh", "-c", "echo '{\"message\":\"'$(fortune | base64 -w0)'\"}'"]
}

output "fortune_cowsay" {
  description = "Fortune message"
  value       = base64decode(data.external.fortune_cowsay.result.message)
}
