variable repositories {
  description = "Map of repositories to configure."
  type        = map
  default     = {
    my_repo_5 = {
      description  = "My wonderful fifth repository."
    },
    my_repo_6 = {
      description = "My wonderful sixth repository."
    }
  }
}

module "github" {
  source   = "../../"
  for_each = var.repositories

  repository_name                               = each.key
  repository_description                        = each.value.description
  # repository_environment                        = each.value.environment
  # repository_environment_secret_name            = each.value.environment_secret_name
  # repository_environment_secret_plaintext_value = each.value.environment_secret_plaintext_value

}
