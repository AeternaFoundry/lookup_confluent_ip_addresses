data "confluent_ip_addresses" "ip_addresses_lookup" {
  for_each = var.ip_addresses_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? [each.value.filter] : []
    content {
      address_types = filter.value.address_types
      clouds        = filter.value.clouds
      regions       = filter.value.regions
      services      = filter.value.services
    }
  }
}

