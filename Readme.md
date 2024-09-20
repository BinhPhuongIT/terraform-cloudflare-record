# Terraform Cloudflare DNS Record Module

This Terraform module allows you to create multiple DNS records in a specified Cloudflare zone with flexible configurations. It supports setting default values for the `type` and `proxied` fields while allowing individual records to override these settings.

## Usage

To use this module, include the following code in your Terraform configuration and specify the zone ID, the default `type`, and a map of record configurations.

### Example

```hcl
module "record" {
  source = "./path/to/record-module"
  
  zone_id = var.zone_id
  type    = "A"  # Default record type if not specified in record_config
  
  record_config = {
    www = {
      value   = "203.0.113.10"
      proxied = true  # Override default proxied value to true
    },
    dev = {
      value   = "203.0.113.2"  # Uses the default type "A"
    },
    prod = {
      type    = "CNAME"  # Override default type to "CNAME"
      value   = "cname.example.com"
    }
  }
}
