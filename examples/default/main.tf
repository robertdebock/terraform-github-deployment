module "github" {
  source                 = "../../"
  repositories = [
    {
      name = "my_repo_1"
      description = "My wonderful first repository."
    },
  ]
}
