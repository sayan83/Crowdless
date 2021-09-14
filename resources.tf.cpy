resource "aws_lambda_function" "getStoreInfo" {
  filename      = ".\\lambda\\deployment_packages\\getStoreInfo-4871ba36-4b44-45cf-853b-391174590eb8.zip"
  function_name = "getStoreInfo"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"

  source_code_hash = "ol5oEJqcsuev0z+xD9xd8GrkXN653dTPfp7E9fAKDYY="

  runtime = "nodejs12.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}