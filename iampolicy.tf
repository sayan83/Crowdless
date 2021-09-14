data "aws_iam_policy" "lambdaBasicPolicy" {
  name = "AWSLambdaBasicExecutionRole"
}

data "aws_iam_policy_document" "lambdaBasicExecutionPolicy" {
    policy_id = data.aws_iam_policy.lambdaBasicPolicy.id
}

data "aws_iam_policy_document" "lambda-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}