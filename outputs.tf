output "ip_addresses_lookup_id" {
  description = "Map of id values across all ip_addresses_lookup, keyed the same as var.ip_addresses_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_ip_addresses.ip_addresses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_addresses_lookup_filter" {
  description = "Map of filter values across all ip_addresses_lookup, keyed the same as var.ip_addresses_lookup except keys with no filter are omitted"
  value       = { for k, v in data.confluent_ip_addresses.ip_addresses_lookup : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "ip_addresses_lookup_ip_addresses" {
  description = "Map of ip_addresses values across all ip_addresses_lookup, keyed the same as var.ip_addresses_lookup except keys with no ip_addresses are omitted"
  value       = { for k, v in data.confluent_ip_addresses.ip_addresses_lookup : k => v.ip_addresses if v.ip_addresses != null && length(v.ip_addresses) > 0 }
}

