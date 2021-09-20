data "github_user" "default" {
  username = ""
}

module "github" {
  source                                        = "../../"
  repository_name                               = "my_repo_3"
  repository_description                        = "My wonderful third repository."
  repository_environment                        = "test"
  repository_environment_reviewers_users        = [data.github_user.default.id]
  repository_environment_secret_name            = "my_secret"
  repository_environment_secret_plaintext_value = "Super-Secure"
}
