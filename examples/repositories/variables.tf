# The function `optional` is experimental.
terraform {
  experiments = [module_variable_optional_attrs]
}

variable "repositories" {
  description = "List of repositories to configure."
  type = list(object({
    name               = string
    description        = string
    homepage_url       = optional(string)
    topics             = optional(list(string))
    visibility         = optional(string)
    has_issues         = optional(bool)
    has_projects       = optional(bool)
    has_wiki           = optional(bool)
    allow_squash_merge = optional(bool)
    allow_rebase_merge = optional(bool)
  }))
  default = [
    {
      name               = null
      description        = null
      homepage_url       = ""
      topics             = []
      visibility         = "internal"
      has_issues         = true
      has_projects       = true
      has_wiki           = false
      allow_squash_merge = false
      allow_rebase_merge = false
    }
  ]
}
