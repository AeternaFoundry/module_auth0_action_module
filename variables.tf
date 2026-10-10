variable "action_modules" {
  description = <<EOT
Map of action_modules, attributes below
Required:
    - code
    - name
Optional:
    - publish
    - dependencies (block):
        - name (required)
        - version (required)
    - secrets (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    code    = string
    name    = string
    publish = optional(bool)
    dependencies = optional(list(object({
      name    = string
      version = string
    })))
    secrets = optional(list(object({
      name  = string
      value = string
    })))
  }))
}

