variable "repository_name" {
  type        = string
  description = "The name of the repository."
  default     = ""
}

variable "repository_description" {
  type        = string
  description = "A description of the repository."
  default     = ""
}

variable "repository_homepage_url" {
  type        = string
  description = "URL of a page describing the project."
  default     = ""
}

variable "repository_has_issues" {
  type        = bool
  description = "Set to true to enable the GitHub Issues features on the repository."
  default     = true
}

variable "repository_has_projects" {
  type        = bool
  description = "Set to true to enable the GitHub Projects features on the repository."
  default     = true
}

variable "repository_has_wiki" {
  type        = bool
  description = "Set to true to enable the GitHub Wiki features on the repository."
  default     = true
}

variable "repository_allow_merge_commit" {
  type        = bool
  description = "Set to false to disable merge commits on the repository."
  default     = true
}

variable "repository_allow_squash_merge" {
  type        = bool
  description = "Set to false to disable squash merges on the repository."
  default     = true
}

variable "repository_allow_rebase_merge" {
  type        = bool
  description = "Set to false to disable rebase merges on the repository."
  default     = true
}

variable "repository_topics" {
  type        = list(string)
  description = "The list of topics of the repository."
  default     = []
}

variable "repository_visibility" {
  type        = string
  description = "Set the visibility of the repository."
  default     = "public"
  validation {
    condition     = var.repository_visibility == "internal" || var.repository_visibility == "private" || var.repository_visibility == "public"
    error_message = "The visibility can be set to \"intenal\", \"private\" or \"public\"."
  }
}

variable "repository_template" {
  description = "Use a template repository to create this resource."
  type = object({
    owner      = string
    repository = string
  })
  default = null
}

variable "repository_vulnerability_alerts" {
  type        = bool
  description = "Set to true to enable security alerts for vulnerable dependencies."
  default     = false
}

variable "repository_environment" {
  type        = string
  description = "The name of the environment."
  default     = ""
}

variable "repository_environment_reviewers_teams" {
  type        = list(string)
  description = "Up to 6 IDs for teams who may review jobs that reference the environment."
  default     = []
}

variable "repository_environment_reviewers_users" {
  type        = list(string)
  description = "Up to 6 IDs for users who may review jobs that reference the environment."
  default     = []
}

variable "environment_deployment_branch_policy_protected_braches" {
  type        = bool
  description = "Whether only branches with branch protection rules can deploy to this environment."
  default     = false
}

variable "environment_deployment_branch_policy_custom_branch_policies" {
  type        = bool
  description = "Whether only branches that match the specified name patterns can deploy to this environment."
  default     = true
}

variable "repository_environment_secret_name" {
  type        = string
  description = "Name of the secret."
  default     = ""
}

variable "repository_environment_secret_plaintext_value" {
  type        = string
  description = "Plaintext value of the secret to be encrypted."
  default     = ""
  sensitive   = true
}
