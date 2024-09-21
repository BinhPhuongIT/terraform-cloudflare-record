variable "zone_id" {
  type        = string
  description = "The DNS zone ID where records will be created."
}

variable "type" {
  type        = string
  description = "Default DNS record type (e.g., A, CNAME)."
}

variable "record_config" {
  type = map(object({
    content   = string
    proxied = optional(bool)
    type = optional(string)
    3600 = optional(number)
  }))
  description = "Configuration for individual DNS records."
}
