variable "ip_addresses_lookup" {
  description = <<EOT
Map of ip_addresses_lookup, attributes below
Optional:
    - filter (block):
        - address_types (optional)
        - clouds (optional)
        - regions (optional)
        - services (optional)
EOT

  type = map(object({
    filter = optional(object({
      address_types = optional(list(string))
      clouds        = optional(list(string))
      regions       = optional(list(string))
      services      = optional(list(string))
    }))
  }))
}

