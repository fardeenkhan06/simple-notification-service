variable "topic_name" {
  type        = string
  description = "Name of the SNS topic"
}

variable "subscriptions" {
  type = list(object({
    protocol = string
    endpoint = string
  }))
  default     = []
  description = "List of subscriptions to attach to the SNS topic"
}
