variable "repositories" {
  type = list(map{
    name     = string
    description = string
  })
}


# variable "repositories" {
  # type = list(map({
  # name                                            = string
  # description                                     = string
  # repository_homepage_url                         = string
  # has_issues                                      = bool
  # has_projects                                    = bool
  # has_wiki                                        = bool
  # allow_merge_commit                              = bool
  # allow_squash_merge                              = bool
  # allow_rebase_merge                              = bool
  # topics                                          = list(string)
  # visibility                                      = string
  # vulnerability_alerts                            = bool
  # environment                                     = string
  # environment_reviewers_teams                     = list(string)
  # environment_reviewers_users                     = list(string)
  # deployment_branch_policy_protected_braches      = bool
  # deployment_branch_policy_custom_branch_policies = bool
  # environment_secret_name                         = string
  # environment_secret_plaintext_value              = string
  # template = object({
  #   owner      = string
  #   repository = string
  # }))
# }
