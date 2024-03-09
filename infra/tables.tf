resource "aws_dynamodb_table" "user_table" {
  name         = "User"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"

  attribute {
    name = "userId"
    type = "S"
  }

  tags = {
    Name = "User"
  }
}


resource "aws_dynamodb_table" "tipo_pagamento_table" {
  name         = "TipoPagamento"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "tipoPagamentoId"

  attribute {
    name = "tipoPagamentoId"
    type = "S"
  }

  attribute {
    name = "userId"
    type = "S"
  }

  tags = {
    Name = "TipoPagamento"
  }
}

resource "aws_dynamodb_table" "categoria_pagamento_table" {
  name         = "CategoriaPagamento"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "categoriaPagamentoId"
  range_key    = "tipoPagamentoId"


  attribute {
    name = "categoriaPagamentoId"
    type = "S"
  }

  attribute {
    name = "tipoPagamentoId"
    type = "S"
  }

  tags = {
    Name = "CategoriaPagamento"
  }
}