provider "github" {
    token = "github_token"
}

resource "github_repository" "example" {
  name        = "meu-repositoria-iac"
  description = "Meu repostirio criado via terraform"

  visibility = "private"

}

output "Repo" {
    value = github_repository.example.full_name
}