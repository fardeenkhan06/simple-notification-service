provider "aws" {
  region = "us-east-1"
}

module "sns_notifications" {
  source      = "./module"
  topic_name  = "my-alert-topic"

  subscriptions = [
    {
      protocol = "email"
      endpoint = "fardeenneelgiri001@gmail.com"
    }
  ]
}
