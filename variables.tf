variable "dax_parameter_groups" {
  description = <<EOT
Map of dax_parameter_groups, attributes below
Required:
    - name
Optional:
    - description
    - region
    - parameters (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    parameters = optional(list(object({
      name  = string
      value = string
    })))
  }))
}

