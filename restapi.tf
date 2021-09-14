resource "aws_api_gateway_rest_api" "crowdlessRestAPI" {
   name = "Crowdless-Rest-API"
   description = "Contains all Crowdless Rest APIs"
}

resource "aws_api_gateway_resource" "bookAppointment" {
    rest_api_id = aws_api_gateway_rest_api.crowdlessRestAPI.id
    parent_id = aws_api_gateway_rest_api.crowdlessRestAPI.root_resource_id
    path_part = "bookappointment"
}

resource "aws_api_gateway_method" "bookAppointmentPost" {
    rest_api_id = aws_api_gateway_rest_api.crowdlessRestAPI.id
    resource_id = aws_api_gateway_resource.bookAppointment.id
    http_method = "POST"
    authorization = "NONE"
}

resource "aws_api_gateway_integration" "bookAppointmentLambdaIntegration" {
    rest_api_id = aws_api_gateway_rest_api.crowdlessRestAPI.id
    resource_id = aws_api_gateway_resource.bookAppointment.id
    http_method = aws_api_gateway_method.bookAppointmentPost.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.bookAppointment.invoke_arn
}

resource "aws_lambda_permission" "bookAppointmentInvokePermission" {
  statement_id  = "AllowCrowdlessRestInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.bookAppointment.function_name
  principal     = "apigateway.amazonaws.com"

  # The /*/*/* part allows invocation from any stage, method and resource path
  # within API Gateway REST API.
  source_arn = "${aws_api_gateway_rest_api.crowdlessRestAPI.execution_arn}/*/*${aws_api_gateway_resource.bookAppointment.path}"
}