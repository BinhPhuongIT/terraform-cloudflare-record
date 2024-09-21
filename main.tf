resource "cloudflare_record" "this" {
  for_each = var.record_config

  zone_id = var.zone_id
  name    = each.key
  content   = each.value.content
  type    = coalesce(each.value.type, var.type)
  proxied = coalesce(each.value.proxied, false)
}