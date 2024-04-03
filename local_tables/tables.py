
tables = [
    {
        "TableName": "User",
        "KeySchema": [
            {
                "AttributeName": 'userId',
                "KeyType": 'HASH',
            }
        ],
        "AttributeDefinitions": [
            {
                "AttributeName": 'userId',
                "AttributeType": 'S',
            }
        ],
        "BillingMode": "PAY_PER_REQUEST"
    },
    {
        "TableName": "Session",
        "KeySchema": [
            {
                "AttributeName": 'sessionId',
                "KeyType": 'HASH',
            }
        ],
        "AttributeDefinitions": [
            {
                "AttributeName": 'sessionId',
                "AttributeType": 'S',
            }
        ],
        "BillingMode": "PAY_PER_REQUEST",
        "TimeToLiveSpecification": {
            'Enabled': True,
            'AttributeName': 'expireOn'
        }
    },
    {
        "TableName": "TipoPagamento",
        "KeySchema": [
            {
                "AttributeName": 'userId',
                "KeyType": 'HASH',
            },
            {
                "AttributeName": 'tipoPagamentoId',
                "KeyType": 'RANGE',
            }
        ],
        "AttributeDefinitions": [
            {
                "AttributeName": 'userId',
                "AttributeType": 'S',
            },
            {
                "AttributeName": 'tipoPagamentoId',
                "AttributeType": 'S',
            }
        ],
        "BillingMode": "PAY_PER_REQUEST"
    },
    {
        "TableName": "Despesa",
        "KeySchema": [
            {
                "AttributeName": 'userId',
                "KeyType": 'HASH',
            },
            {
                "AttributeName": 'despesaId',
                "KeyType": 'RANGE',
            }
        ],
        "AttributeDefinitions": [
            {
                "AttributeName": 'userId',
                "AttributeType": 'S',
            },
            {
                "AttributeName": 'despesaId',
                "AttributeType": 'S',
            }
        ],
        "BillingMode": "PAY_PER_REQUEST"
    }
]
