object frmRelProVenda: TfrmRelProVenda
  Left = 0
  Top = 0
  Caption = 'frmRelProVenda'
  ClientHeight = 723
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Color = clWindow
    DataSource = dtsVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 5
        Width = 77
        Height = 24
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 35
        Width = 718
        Height = 24
        Align = faBottom
        DrawKind = dkLine
        Transparent = False
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 409
      Width = 718
      Height = 40
      AutoExpand = False
      BandType = btFooter
      Transparent = False
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        DrawKind = dkLine
        Transparent = False
      end
      object rlsData: TRLSystemInfo
        Left = 3
        Top = 19
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
        Transparent = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 693
        Top = 18
        Width = 18
        Height = 16
        Alignment = taCenter
        Info = itLastPageNumber
        Text = ''
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 18
        Width = 8
        Height = 16
        Alignment = taRightJustify
        Caption = '/'
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 620
        Top = 18
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 668
        Top = 18
        Width = 17
        Height = 16
        Info = itPageNumber
        Text = ''
        Transparent = False
      end
    end
    object BandDoGrupo: TRLGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 272
      DataFields = 'clienteID'
      Transparent = False
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        BandType = btHeader
        Color = clMoneyGreen
        ParentColor = False
        Transparent = False
        object RLLabel8: TRLLabel
          Left = 0
          Top = 0
          Width = 49
          Height = 17
          Align = faLeft
          Caption = 'Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 51
          Top = 0
          Width = 49
          Height = 16
          Color = clMoneyGreen
          DataField = 'vendaID'
          DataSource = dtsVendas
          ParentColor = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 17
        Width = 718
        Height = 17
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 652
          Top = 0
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'dataVenda'
          DataSource = dtsVendas
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 135
          Top = 0
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsVendas
          Text = ''
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 80
          Top = 0
          Width = 53
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 611
          Top = 0
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 21
          Height = 17
          Align = faLeft
          Caption = 'ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 24
          Top = 0
          Width = 34
          Height = 16
          DataField = 'clienteID'
          DataSource = dtsVendas
          Text = ''
          Transparent = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 34
        Width = 718
        Height = 183
        DataSource = dtsVendaItens
        Transparent = False
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 19
          BandType = btHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel6: TRLLabel
            Left = 7
            Top = 3
            Width = 64
            Height = 16
            Caption = 'Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 434
            Top = 3
            Width = 82
            Height = 16
            Caption = 'Quantidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 536
            Top = 0
            Width = 96
            Height = 16
            Caption = 'Valor Unitario:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 678
            Top = 3
            Width = 40
            Height = 16
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 19
          Width = 718
          Height = 26
          ParentColor = False
          Transparent = False
          object RLDBText4: TRLDBText
            Left = 3
            Top = 6
            Width = 20
            Height = 16
            Alignment = taCenter
            DataField = 'produtoID'
            DataSource = dtsVendaItens
            Text = ''
            Transparent = False
          end
          object RLDBText5: TRLDBText
            Left = 34
            Top = 6
            Width = 38
            Height = 16
            DataField = 'Nome'
            DataSource = dtsVendaItens
            Text = ''
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 23
            Top = 6
            Width = 8
            Height = 16
            Alignment = taCenter
            Caption = '-'
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 449
            Top = 6
            Width = 67
            Height = 16
            Alignment = taRightJustify
            DataField = 'quantidade'
            DataSource = dtsVendaItens
            Text = ''
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 558
            Top = 6
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'valorUnitario'
            DataSource = dtsVendaItens
            Text = ''
            Transparent = False
          end
          object RLDBText9: TRLDBText
            Left = 642
            Top = 6
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'totalProduto'
            DataSource = dtsVendaItens
            Text = ''
            Transparent = False
          end
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 369
      Width = 718
      Height = 40
      BandType = btSummary
      Transparent = False
      object RLLabel9: TRLLabel
        Left = 505
        Top = 14
        Width = 105
        Height = 16
        Caption = 'Total da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 612
        Top = 14
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsVendas
        Info = riSum
        Text = ''
        Transparent = False
      end
      object RLDraw4: TRLDraw
        Left = 508
        Top = 6
        Width = 206
        Height = 7
        DrawKind = dkLine
        Transparent = False
      end
    end
  end
  object QryVendas: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT vendas.vendaID, '
      #9'   vendas.clienteID, '
      #9'   clientes.nome, '
      #9'   vendas.dataVenda, '
      #9'   vendas.totalVenda'
      ' FROM vendas '
      ' INNER JOIN clientes ON clientes.clienteID = vendas.clienteID '
      ' WHERE vendas.vendaID =:VENDAID'
      '')
    Left = 632
    Top = 568
    ParamData = <
      item
        Name = 'VENDAID'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
        Value = 1
      end>
    object QryVendasvendaID: TFDAutoIncField
      FieldName = 'vendaID'
      Origin = 'vendaID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryVendasclienteID: TIntegerField
      FieldName = 'clienteID'
      Origin = 'clienteID'
      Required = True
    end
    object QryVendasnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TSQLTimeStampField
      FieldName = 'dataVenda'
      Origin = 'dataVenda'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryVendastotalVenda: TFMTBCDField
      FieldName = 'totalVenda'
      Origin = 'totalVenda'
      Precision = 18
      Size = 5
    end
  end
  object dtsVendas: TDataSource
    DataSet = QryVendas
    Left = 704
    Top = 568
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 704
    Top = 512
  end
  object QryVendaItens: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      
        'SELECT vendasItens.vendaID, vendasItens.produtoID, produtos.Nome' +
        ','
      
        '       vendasItens.quantidade, vendasItens.valorUnitario, vendas' +
        'Itens.totalProduto'
      'FROM vendasItens'
      
        '    INNER JOIN produtos ON produtos.produtoID = vendasItens.prod' +
        'utoID'
      'WHERE vendasItens.vendaID = :VENDAID'
      'ORDER BY vendasItens.produtoID')
    Left = 632
    Top = 632
    ParamData = <
      item
        Name = 'VENDAID'
        DataType = ftInteger
        FDDataType = dtUInt64
        ParamType = ptInput
        Value = '1'
      end>
    object QryVendaItensvendaID: TIntegerField
      FieldName = 'vendaID'
      Origin = 'vendaID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendaItensprodutoID: TIntegerField
      FieldName = 'produtoID'
      Origin = 'produtoID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendaItensNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 60
    end
    object QryVendaItensquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 18
      Size = 5
    end
    object QryVendaItensvalorUnitario: TFMTBCDField
      FieldName = 'valorUnitario'
      Origin = 'valorUnitario'
      Precision = 18
      Size = 5
    end
    object QryVendaItenstotalProduto: TFMTBCDField
      FieldName = 'totalProduto'
      Origin = 'totalProduto'
      Precision = 18
      Size = 5
    end
  end
  object dtsVendaItens: TDataSource
    DataSet = QryVendaItens
    Left = 704
    Top = 632
  end
end
