object frmRelCategoria: TfrmRelCategoria
  Left = 0
  Top = 0
  Caption = 'frmRelCategoria'
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
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsCategorias
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 3
        Width = 245
        Height = 24
        Caption = 'Listagem de Categorias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 35
        Width = 718
        Height = 24
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 40
      AutoExpand = False
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faTop
        DrawKind = dkLine
      end
      object rlsData: TRLSystemInfo
        Left = 3
        Top = 19
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 18
        Width = 19
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 693
        Top = 18
        Width = 18
        Height = 16
        Alignment = taCenter
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 18
        Width = 8
        Height = 16
        Alignment = taRightJustify
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 618
        Top = 18
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 24
      object RLDBText1: TRLDBText
        Left = 7
        Top = 7
        Width = 56
        Height = 16
        DataField = 'categoriaID'
        DataSource = dtsCategorias
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 69
        Top = 6
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = dtsCategorias
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 24
      GreenBarColor = clYellow
      BandType = btColumnHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        Align = faClient
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 12
          Top = 3
          Width = 53
          Height = 16
          Caption = 'C'#243'digo '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 70
          Top = 3
          Width = 66
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object QryCategorias: TFDQuery
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT categoriaID, descricao '
      'FROM categorias'
      'ORDER BY descricao')
    Left = 592
    Top = 264
    object QryCategoriascategoriaID: TFDAutoIncField
      FieldName = 'categoriaID'
      Origin = 'categoriaID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryCategoriasdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
  end
  object dtsCategorias: TDataSource
    DataSet = QryCategorias
    Left = 592
    Top = 312
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 592
    Top = 368
  end
end
