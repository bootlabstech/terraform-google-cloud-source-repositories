resource "google_sourcerepo_repository" "repo" {
  name    = var.repo_name
  project = var.project_id

  dynamic "pubsub_configs" {
    for_each = var.enable_pushsub_config ? [{}] : []
    content {
      topic                 = var.topic
      message_format        = var.message_format
      service_account_email = var.service_account_email
    }
  }
  lifecycle {
    ignore_changes = [labels]
  }
}