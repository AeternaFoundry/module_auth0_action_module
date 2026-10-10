resource "auth0_action_module" "action_modules" {
  for_each = var.action_modules

  code    = each.value.code
  name    = each.value.name
  publish = each.value.publish

  dynamic "dependencies" {
    for_each = each.value.dependencies != null ? each.value.dependencies : []
    content {
      name    = dependencies.value.name
      version = dependencies.value.version
    }
  }

  dynamic "secrets" {
    for_each = each.value.secrets != null ? each.value.secrets : []
    content {
      name  = secrets.value.name
      value = secrets.value.value
    }
  }
}

