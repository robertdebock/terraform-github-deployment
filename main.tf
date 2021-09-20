resource "github_repository" "default" {
 for_each = var.repositories
 
 name = each.value.name
 description = each.value.description
 }
