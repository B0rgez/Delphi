object frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria
  Left = 0
  Top = 0
  Caption = 'frmRelCadProdutoComGrupoCategoria'
  ClientHeight = 723
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsProdutos
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
        Top = 3
        Width = 384
        Height = 24
        Caption = 'Listagem de Produtos por Categorias'
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
      Top = 505
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
        Left = 623
        Top = 18
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 674
        Top = 18
        Width = 11
        Height = 16
        Alignment = taCenter
        Info = itPageNumber
        Text = ''
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 408
      DataFields = 'CategoriaID'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        BandType = btHeader
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 0
          Top = 0
          Width = 70
          Height = 16
          Caption = 'Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 10
          Top = 0
          Width = 75
          Height = 16
          Alignment = taRightJustify
          DataField = 'CategoriaID'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 95
          Top = 0
          Width = 123
          Height = 16
          DataField = 'DescricaoCategoria'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 85
          Top = -1
          Width = 8
          Height = 16
          Alignment = taCenter
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 17
        Width = 718
        Height = 17
        BandType = btColumnHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel5: TRLLabel
          Left = 0
          Top = 0
          Width = 49
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 67
          Top = 0
          Width = 115
          Height = 16
          Caption = 'Nome do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 506
          Top = 0
          Width = 152
          Height = 16
          Caption = 'Quantidade de Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 680
          Top = 0
          Width = 38
          Height = 16
          Align = faRightTop
          Alignment = taRightJustify
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 52
        Width = 718
        Height = 43
        BandType = btSummary
        object RLDraw3: TRLDraw
          Left = 379
          Top = 0
          Width = 336
          Height = 10
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 379
          Top = 24
          Width = 216
          Height = 16
          Caption = 'Total de Quantidade p/Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 379
          Top = 6
          Width = 205
          Height = 16
          Caption = 'M'#233'dia do Produtos p/Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 623
          Top = 6
          Width = 92
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = dtsProdutos
          Info = riAverage
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 609
          Top = 24
          Width = 109
          Height = 16
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Info = riSum
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 18
        object RLDBText3: TRLDBText
          Left = 3
          Top = 1
          Width = 61
          Height = 16
          DataField = 'ProdutoID'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 69
          Top = 1
          Width = 38
          Height = 16
          DataField = 'Nome'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 576
          Top = -1
          Width = 70
          Height = 16
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 682
          Top = -1
          Width = 34
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = dtsProdutos
          Text = ''
        end
      end
    end
  end
  object QryProdutos: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT produtos.ProdutoID, produtos.Nome, '
      '       produtos.Descricao, produtos.valor, '
      '       produtos.quantidade, produtos.CategoriaID,'
      '       categorias.Descricao AS DescricaoCategoria '
      ' FROM produtos '
      
        ' LEFT JOIN categorias ON categorias.CategoriaID = produtos.Categ' +
        'oriaID'
      ' ORDER BY produtos.CategoriaID , produtos.ProdutoID')
    Left = 552
    Top = 584
    object QryProdutosProdutoID: TFDAutoIncField
      FieldName = 'ProdutoID'
      Origin = 'ProdutoID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryProdutosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 60
    end
    object QryProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 255
    end
    object QryProdutosValor: TFMTBCDField
      FieldName = 'Valor'
      KeyFields = 'Valor'
      Origin = 'Valor'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object QryProdutosQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      KeyFields = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
      Size = 5
    end
    object QryProdutosCategoriaID: TIntegerField
      FieldName = 'CategoriaID'
      Origin = 'CategoriaID'
    end
    object QryProdutosDescricaoCategoria: TStringField
      FieldName = 'DescricaoCategoria'
      Origin = 'DescricaoCategoria'
      Size = 30
    end
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 616
    Top = 584
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 688
    Top = 584
  end
end
