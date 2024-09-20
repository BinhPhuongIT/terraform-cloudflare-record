output "record_names" {
  value = cloudflare_record.this[*].name
}
