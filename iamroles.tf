resource "aws_iam_role" "crowdless_lambda_role" {
  name = "crowdless_Lambda"
  assume_role_policy  = data.aws_iam_policy_document.lambda-assume-role-policy.json
  managed_policy_arns = [data.aws_iam_policy.lambdaBasicPolicy.arn]

  inline_policy {
    name = "DynamoDBLambdaCustomPolicy" 
    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "dynamodb:BatchGetItem",
                "dynamodb:BatchWriteItem",
                "dynamodb:PutItem",
                "dynamodb:DeleteItem",
                "dynamodb:Scan",
                "dynamodb:Query",
                "dynamodb:DescribeStream",
                "dynamodb:UpdateItem",
                "dynamodb:ListStreams",
                "dynamodb:GetShardIterator",
                "dynamodb:GetItem",
                "dynamodb:UpdateTable",
                "dynamodb:GetRecords"
            ],
            "Resource": "*"
        }
      ]
    })
  }
  
  inline_policy {
    name = "ExecuteAllAPI"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "execute-api:*",
            "Resource": "*"
        }
      ]
    })
  }

  inline_policy {
    name = "LambdaInvokeRole"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "lambda:InvokeFunction",
                "lambda:InvokeAsync"
            ],
            "Resource": [
                "arn:aws:lambda:ap-south-1:209223835471:function:cancelAppointments",
                "arn:aws:lambda:ap-south-1:209223835471:function:sendEmail",
                "arn:aws:lambda:ap-south-1:209223835471:function:updateAppointmentTime",
                "arn:aws:lambda:ap-south-1:209223835471:function:scheduleEmailTrigger"
            ]
        }
      ]
    })
  }

  inline_policy {
    name = "uploadToS3"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:GetAccessPoint",
                "s3:PutAccountPublicAccessBlock",
                "s3:GetAccountPublicAccessBlock",
                "s3:ListAllMyBuckets",
                "s3:ListAccessPoints",
                "s3:ListJobs",
                "s3:CreateJob",
                "s3:HeadBucket"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::*/*"
        },
        {
            "Sid": "VisualEditor2",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::*",
                "arn:aws:s3:*:*:accesspoint/*",
                "arn:aws:s3:*:*:job/*"
            ]
        }
      ]
    })
  }

  tags = {
    tag-key = "crowdless-lambda"
  }
}

resource "aws_iam_role" "crowdless_lambda_notification_role" {
  name = "crowdless_Lambda_Notification"
  assume_role_policy  = data.aws_iam_policy_document.lambda-assume-role-policy.json
  managed_policy_arns = [data.aws_iam_policy.lambdaBasicPolicy.arn]

  inline_policy {
    name = "addRoleToCloudWatchEvents" 
    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": "arn:aws:iam::209223835471:role/crowdlessCloudWatchEventInvoke"
        }
      ]
    })
  }
  
  inline_policy {
    name = "ExecuteAllAPI"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "execute-api:*",
            "Resource": "*"
        }
      ]
    })
  }

  inline_policy {
    name = "checkBlackedEmailsPolicy"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "dynamodb:GetItem",
                "dynamodb:UpdateItem"
            ],
            "Resource": [
                "arn:aws:dynamodb:ap-south-1:209223835471:table/BlockEmails",
                "arn:aws:dynamodb:ap-south-1:209223835471:table/reviewEmails"
            ]
        }
      ]
    })
  }

  inline_policy {
    name = "crowdlesspinpointpolicy"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "mobileanalytics:*",
                "mobiletargeting:*"
            ],
            "Resource": "*"
        }
      ]
    })
  }

  inline_policy {
    name = "scheduleLambda"

    policy = jsonencode({
      "Version" = "2012-10-17"
      "Statement" = [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "events:PutTargets",
                "events:PutRule"
            ],
            "Resource": "*"
        }
      ]
    })
  }

  tags = {
    tag-key = "crowdless-lambda-notification"
  }
}