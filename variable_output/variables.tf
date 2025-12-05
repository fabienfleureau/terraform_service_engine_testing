variable "content" {
  description = "Content to output"
  type        = string
}

variable "sleep_duration" {
  description = "Duration to sleep in seconds"
  type        = number
  nullable    = false
  default     = 120  # 2 minutes default
}

variable "jedi_or_sith" {
  description = "Mapping character to jedi or sith"
  type        = map(string)
  default     = {
    luke  = "jedi"
    yoda  = "jedi"
    darth = "sith"
  }
}