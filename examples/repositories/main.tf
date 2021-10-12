module "github" {
  source = "../../"
  for_each = {
    for index, repository in var.repositories :
    index => repository
  }
  repository_name         = each.value.name
  repository_description  = each.value.description
  repository_homepage_url = try(each.value.homepage_url, null)
  repository_has_issues   = try(each.value.has_issues, null)
  repository_has_projects = try(each.value.has_projects, null)
  repository_has_wiki     = try(each.value.has_wiki, null)
}
