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

resource "aws_dynamodb_table" "session_table" {
  name         = "Session"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "sessionId"

  attribute {
    name = "sessionId"
    type = "S"
  }

  ttl {
    attribute_name = "expireOn"
    enabled        = true
  }

  tags = {
    Name = "Session"
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


resource "aws_dynamodb_table" "despesa_table" {
  name         = "Despesa"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "despesaId"

  attribute {
    name = "userId"
    type = "S"
  }

  attribute {
    name = "despesaId"
    type = "S"
  }

  attribute {
    name = "dataProximoPagamento"
    type = "S"
  }

  tags = {
    Name = "Despesa"
  }

  global_secondary_index {
    name               = "dataProximoPagamentoIndex"
    hash_key           = "dataProximoPagamento"
    projection_type    = "ALL"
  }

}

resource "aws_dynamodb_table" "historico_despesa_table" {
  name         = "HistoricoDespesa"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "despesaId"

  attribute {
    name = "userId"
    type = "S"
  }

  attribute {
    name = "despesaId"
    type = "S"
  }

  attribute {
    name = "dataPagamento"
    type = "S"
  }

  local_secondary_index {
    name = "dataPagamentoIndex"
    projection_type = "ALL"
    range_key = "dataPagamento"
  }
}