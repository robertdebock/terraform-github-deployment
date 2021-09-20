data "github_user" "default" {
  username = ""
}

module "github" {
  source                 = "../../"
  repository_name        = "my_repo_4"
  repository_description = "My wonderful fourth repository."
  repository_template = {
    owner      = "orbitdb"
    repository = "repo-template"
  }
}
