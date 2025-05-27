resource "aws_lambda_function" "hello_world" {
  function_name = "hello-world"
  role          = var.role_arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  filename         = "${path.module}/lambda.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda.zip")
}
