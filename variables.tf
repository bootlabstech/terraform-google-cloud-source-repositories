variable "project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs"
}

variable "repo_name" {
  type        = string
  description = "Resource name of the repository"
}

variable "enable_pushsub_config" {
  type        = bool
  description = "How this repository publishes a change in the repository through Cloud Pub/Sub."
  default     = false
}

variable "topic" {
  type        = string
  description = "The identifier for this object"
}

variable "message_format" {
  type        = string
  description = "The format of the Cloud Pub/Sub messages.the possible values are PROTOBUF,JSON"
}

variable "service_account_email" {
  type        = string
  description = "Email address of the service account used for publishing Cloud Pub/Sub messages."
}