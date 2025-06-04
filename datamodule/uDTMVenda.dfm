object dtmVenda: TdtmVenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 134
  Width = 230
  object QryProdutos: TFDQuery
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT produtoID, nome, valor, quantidade'
      'FROM produtos')
    Left = 88
    Top = 8
    object QryProdutosprodutoID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoID'
      Origin = 'produtoID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryProdutosnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object QryProdutosvalor: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 18
      Size = 5
    end
    object QryProdutosquantidade: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 18
      Size = 5
    end
  end
  object QryCliente: TFDQuery
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT clienteID, nome'
      'FROM clientes')
    Left = 16
    Top = 8
    object QryClienteclienteID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteID'
      Origin = 'clienteID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryClientenome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 8
    object cdsItensVendaprodutoID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoID'
    end
    object cdsItensVendaNomeProduto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'NomeProduto'
      Size = 60
    end
    object cdsItensVendaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsItensVendavalorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorUnitario'
    end
    object cdsItensVendavalorTotalProduto: TFloatField
      DisplayLabel = 'Total do Produto'
      FieldName = 'valorTotalProduto'
    end
  end
  object dtsItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 168
    Top = 64
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 88
    Top = 64
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
    Left = 16
    Top = 64
  end
end
