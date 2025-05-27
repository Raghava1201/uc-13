resource "aws_cognito_user_pool" "user_pool" {
  name = "hello-user-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name         = "hello-client"
  user_pool_id = aws_cognito_user_pool.user_pool.id
  generate_secret = false
}
