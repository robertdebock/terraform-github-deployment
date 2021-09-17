resource "github_repository" "default" {
  count              = var.repository_name == "" ? 0 : 1
  name               = var.repository_name
  description        = var.repository_description
  homepage_url       = var.repository_homepage_url
  has_issues         = var.repository_has_issues
  has_projects       = var.repository_has_projects
  has_wiki           = var.repository_has_wiki
  allow_squash_merge = var.repository_allow_squash_merge
  allow_rebase_merge = var.repository_allow_rebase_merge
  topics             = var.repository_topics
  visibility         = var.repository_visibility
  dynamic "template" {
    for_each = var.repository_template != null ? [var.repository_template] : []
    content {
      owner      = repository_template.value.owner
      repository = repository_template.value.repository
    }
  }
  vulnerability_alerts = var.repository_vulnerability_alerts
}

resource "github_repository_environment" "default" {
  count       = var.repository_environment == "" ? 0 : 1
  environment = var.repository_environment
  repository  = var.repository_environment_repository
  reviewers {
    teams = var.repository_environment_reviewers_teams
    users = var.repository_environment_reviewers_users
  }
  deployment_branch_policy {
    protected_branches     = var.environment_deployment_branch_policy_protected_braches
    custom_branch_policies = var.environment_deployment_branch_policy_custom_branch_policies
  }
}

resource "github_actions_environment_secret" "default" {
  count             = var.repository_environment_secret == "" ? 0 : 1
  environment       = var.repository_environment
  secret_name       = var.repository_environment_secret_name
  plaintext_value   = var.some_secret_string
}
