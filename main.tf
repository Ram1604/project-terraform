resource "google_pubsub_topic" "topic1" {
  name = "test-1"
  message_retention_duration = "86600s"
  project = var.project_id
}

resource "google_pubsub_subscription" "sub1" {
  name = "test-1-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}

resource "google_pubsub_subscription" "sub2" {
  name = "test-2-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}

resource "google_pubsub_subscription" "sub3" {
  name = "test-3-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}

resource "google_pubsub_subscription" "sub4" {
  name = "test-4-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}

resource "google_pubsub_subscription" "sub5" {
  name = "test-5-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}

resource "google_pubsub_subscription" "sub6" {
  name = "test-6-sub"
  project = var.project_id
  topic = google_pubsub_topic.topic1.name
  ack_deadline_seconds = 10
  message_retention_duration = "86400s"
  expiration_policy {
    ttl = ""
  }
}