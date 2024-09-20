resource "cloudflare_record" "this" {
  for_each = var.record_config

  zone_id = var.zone_id
  name    = each.key
  content   = each.value.content
  type    = lookup(each.value, "type", var.type)
  proxied = lookup(each.value, "proxied", false)
}
