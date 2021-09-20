output "repository_full_name" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_full_name }
}

output "repository_html_url" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_html_url }
}

output "repository_ssh_clone_url" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_ssh_clone_url }
}

output "repository_http_clone_url" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_http_clone_url }
}

output "repository_git_clone_url" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_git_clone_url }
}

output "repository_svn_url" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_svn_url }
}

output "repository_node_id" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_node_id }
}

output "repository_repo_id" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_repo_id }
}

output "repository_pages" {
  value = { for x in sort(keys(var.repositories)) : x => module.github[x].repository_pages }
}
