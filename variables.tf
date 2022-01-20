variable "name" {
  description = "Resource Name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "tags" {
  description = "Extra tags to add"
  type        = map(any)
  default     = {}
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "subnet_id" {
  description = "Custom subnet ID for attaching the Application Gateway."
  type        = string
}

variable "apps" {
  description = "Lost of the applications"
  type        = list(map(string))
  default     = []
}

variable "public_ip_address_id" {
  description = "Public Ip for Application Gateway"
  type        = string
}

variable "ssl_certificates_configs" {
  description = <<EOD
List of maps including ssl certificates configurations.
The path to a base-64 encoded certificate is expected in the 'data' parameter:
```
data = filebase64("./file_path")
```
EOD
  type        = list(map(string))
  default     = []
}