module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source   = "./modules/lambda"
  role_arn = module.iam.lambda_role_arn
}

module "cognito" {
  source = "./modules/cognito"
}

module "api_gateway" {
  source                 = "./modules/api_gateway"
  lambda_function_arn    = module.lambda.lambda_function_arn
  lambda_function_name   = module.lambda.lambda_function_name
  cognito_user_pool_arn  = module.cognito.user_pool_arn
}

