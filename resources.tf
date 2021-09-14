resource "aws_lambda_function" "getStoreInfo" {
  filename      = ".\\deployment_packages\\getStoreInfo.zip"
  function_name = "getStoreInfo"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "getEsimatedAppointmentTime" {
  filename      = ".\\deployment_packages\\getStoreInfo.zip"
  function_name = "getEsimatedAppointmentTime"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "handleBounce" {
  filename      = ".\\deployment_packages\\handleBounce.zip"
  function_name = "handleBounce"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "scheduleEmailTrigger" {
  filename      = ".\\deployment_packages\\scheduleEmailTrigger.zip"
  function_name = "scheduleEmailTrigger"
  role          = aws_iam_role.crowdless_lambda_notification_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "bookAppointment" {
  filename      = ".\\deployment_packages\\bookAppointment.zip"
  function_name = "bookAppointment"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "closeSocketConnectionStore" {
  filename      = ".\\deployment_packages\\closeSocketConnectionStore.zip"
  function_name = "closeSocketConnectionStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "initializeDBSocketConnectionStore" {
  filename      = ".\\deployment_packages\\initializeDBSocketConnectionStore.zip"
  function_name = "initializeDBSocketConnectionStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "scanAppointmentDetails" {
  filename      = ".\\deployment_packages\\scanAppointmentDetails.zip"
  function_name = "scanAppointmentDetails"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "updateAppointmentTime" {
  filename      = ".\\deployment_packages\\updateAppointmentTime.zip"
  function_name = "updateAppointmentTime"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "webClientCloseConnection" {
  filename      = ".\\deployment_packages\\webClientCloseConnection.zip"
  function_name = "webClientCloseConnection"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "sendEmail" {
  filename      = ".\\deployment_packages\\sendEmail.zip"
  function_name = "sendEmail"
  role          = aws_iam_role.crowdless_lambda_notification_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "webClientDefaultRequest" {
  filename      = ".\\deployment_packages\\webClientDefaultRequest.zip"
  function_name = "webClientDefaultRequest"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "liveStreamUpdateTrigger" {
  filename      = ".\\deployment_packages\\liveStreamUpdateTrigger.zip"
  function_name = "liveStreamUpdateTrigger"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "handleComplaints" {
  filename      = ".\\deployment_packages\\handleComplaints.zip"
  function_name = "handleComplaints"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "defaultSocketRequestStore" {
  filename      = ".\\deployment_packages\\defaultSocketRequestStore.zip"
  function_name = "defaultSocketRequestStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "openSocketConnectionStore" {
  filename      = ".\\deployment_packages\\openSocketConnectionStore.zip"
  function_name = "openSocketConnectionStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "getCountDataFromStore" {
  filename      = ".\\deployment_packages\\getCountDataFromStore.zip"
  function_name = "getCountDataFromStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "syncWithStore" {
  filename      = ".\\deployment_packages\\syncWithStore.zip"
  function_name = "syncWithStore"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "webClientOpenConnection" {
  filename      = ".\\deployment_packages\\webClientOpenConnection.zip"
  function_name = "webClientOpenConnection"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "requestMoreTime" {
  filename      = ".\\deployment_packages\\requestMoreTime.zip"
  function_name = "requestMoreTime"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "getAppointmentDetails" {
  filename      = ".\\deployment_packages\\getAppointmentDetails.zip"
  function_name = "getAppointmentDetails"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "cancelAppointments" {
  filename      = ".\\deployment_packages\\cancelAppointments.zip"
  function_name = "cancelAppointments"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "userCancelAppointment" {
  filename      = ".\\deployment_packages\\userCancelAppointment.zip"
  function_name = "userCancelAppointment"
  role          = aws_iam_role.crowdless_lambda_role.arn
  handler       = "index.js"
  runtime = "nodejs12.x"
}