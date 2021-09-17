output "repository_full_name" {
  value       = github_repository.default.*.full_name
  description = "A string of the form \"orgname/reponame\"."
}

output "repository_html_url" {
  value       = github_repository.default.*.html_url
  description = "URL to the repository on the web."
}

output "repository_ssh_clone_url" {
  value       = github_repository.default.*.ssh_clone_url
  description = "URL that can be provided to git clone to clone the repository via SSH."
}

output "repository_http_clone_url" {
  value       = github_repository.default.*.http_clone_url
  description = "URL that can be provided to git clone to clone the repository via HTTPS."
}

output "repository_git_clone_url" {
  value       = github_repository.default.*.git_clone_url
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol."
}

output "repository_svn_url" {
  value       = github_repository.default.*.svn_url
  description = "URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation."
}

output "repository_node_id" {
  value       = github_repository.default.*.node_id
  description = "GraphQL global node id for use with v4 API."
}

output "repository_repo_id" {
  value       = github_repository.default.*.repo_id
  description = "GitHub ID for the repository."
}

output "repository_pages" {
  value       = github_repository.default.*.pages
  description = "The block consisting of the repository's GitHub Pages configuration with the following additional attributes."
}
