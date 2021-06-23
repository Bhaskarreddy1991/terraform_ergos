# # creating SNS topic
# resource "aws_sns_topic" "my_sns_topic" {
#   name                        = "my-sns-topic-new"
#   fifo_topic                  = false
#   content_based_deduplication = false
# }

# # topic subscription
# resource "aws_sns_topic_subscription" "my_sns_sub" {
#   topic_arn = "arn:aws:sns:us-east-1:589076428231:my-sns-topic-new"
#   protocol  = "email"
#   endpoint  = "ajreddy1096@gmail.com"
# }


