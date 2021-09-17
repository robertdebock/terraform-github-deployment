data "github_user" "current" {
  username = ""
}

module "github" {
  source = "../../"
  repository_name = "my_repo_3"
  repository_description = "My wonderful third repository."
  repository_environment = "test"
  repository_environment_repository = "my_repo_3"
  repository_environment_reviewers_users = [data.github_user.current.id]
}
