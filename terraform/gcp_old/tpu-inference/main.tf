module "ci_v6" {
  source = "../modules/ci_v6"
  providers = {
    google-beta.us-east5-b = google-beta.us-east5-b
  }
  project_id = var.project_id
  buildkite_ci_agent_token_name = var.buildkite_ci_agent_token_name
  huggingface_token_name = var.huggingface_token_name
  ci_v6_instance_count = var.ci_v6_instance_count
  ci_v6_disk_size = var.ci_v6_disk_size
}

module "ci_v6_central" {
  source = "../modules/ci_v6"
  providers = {
    google-beta.us-central1-b = google-beta.us-central1-b
  }
  project_id = var.project_id
  buildkite_ci_agent_token_name = var.buildkite_ci_agent_token_name
  huggingface_token_name = var.huggingface_token_name
  ci_v6_instance_count = var.ci_v6_instance_count
  ci_v6_disk_size = 1024
}

module "ci_cpu" {
  source    = "../modules/ci_cpu"
  providers = {
    google-beta.us-east5-b = google-beta.us-east5-b
  }
  project_id = var.project_id
  buildkite_ci_agent_token_name = var.buildkite_ci_agent_token_name
}
