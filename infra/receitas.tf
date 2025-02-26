resource "aws_dynamodb_table" "entradas_table" {
  name         = "Entradas"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "entradaId"

  attribute {
    name = "entradaId"
    type = "S"
  }

  attribute {
    name = "userId"
    type = "S"
  }
}

resource "aws_dynamodb_table" "receitas_table" {
  name         = "Receitas"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "receitaId"

  attribute {
    name = "receitaId"
    type = "S"
  }

  attribute {
    name = "userId"
    type = "S"
  }
}