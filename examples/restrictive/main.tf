module "github" {
  source = "../../"
  repository_name = "my_repo_2"
  repository_description = "My wonderful second repository."
  repository_visibility = "private"
  repository_has_issues = false
  repository_has_projects = false
  repository_has_wiki = false
  repository_allow_merge_commit = false
  repository_allow_squash_merge = false
  repository_allow_rebase_merge = false
}
