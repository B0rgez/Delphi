object frmRelCadClientesFicha: TfrmRelCadClientesFicha
  Left = 0
  Top = 0
  Caption = 'Listagem de Cliente'
  ClientHeight = 726
  ClientWidth = 797
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
    Top = -8
    Width = 794
    Height = 1123
    DataSource = dtsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 39
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 263
        Top = 7
        Width = 164
        Height = 22
        Caption = 'Ficha de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 31
        Width = 718
        Height = 8
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 207
      Width = 718
      Height = 40
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 13
        Align = faTop
        DrawKind = dkLine
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 12
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 669
        Top = 12
        Width = 17
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 697
        Top = 12
        Width = 19
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 12
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 614
        Top = 12
        Width = 55
        Height = 16
        Caption = 'P'#225'ginas:'
      end
    end
    object campo: TRLBand
      Left = 38
      Top = 77
      Width = 718
      Height = 130
      object RLLabel4: TRLLabel
        Left = 41
        Top = 9
        Width = 53
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 100
        Top = 9
        Width = 54
        Height = 16
        DataField = 'clienteID'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 41
        Top = 53
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 41
        Top = 75
        Width = 47
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 329
        Top = 53
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 329
        Top = 75
        Width = 135
        Height = 16
        Caption = 'Data de Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 329
        Top = 9
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 41
        Top = 97
        Width = 82
        Height = 16
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 41
        Top = 31
        Width = 53
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 329
        Top = 31
        Width = 48
        Height = 16
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 617
        Top = 53
        Width = 25
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 100
        Top = 31
        Width = 42
        Height = 16
        DataField = 'cidade'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 81
        Top = 53
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 94
        Top = 75
        Width = 36
        Height = 16
        DataField = 'bairro'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 129
        Top = 97
        Width = 57
        Height = 16
        DataField = 'endereco'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 380
        Top = 9
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 383
        Top = 31
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 399
        Top = 53
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 470
        Top = 75
        Width = 98
        Height = 16
        DataField = 'dataNascimento'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 648
        Top = 53
        Width = 43
        Height = 16
        DataField = 'estado'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 119
        Width = 718
        Height = 11
        Align = faBottom
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object QryClientes: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT clienteID, nome, cep, endereco, '
      '       bairro, cidade, estado,'
      '       email, telefone, dataNascimento '
      ' FROM clientes'
      'ORDER BY nome'
      ''
      '')
    Left = 632
    Top = 496
    object QryClientesclienteID: TFDAutoIncField
      FieldName = 'clienteID'
      Origin = 'clienteID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryClientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object QryClientescep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object QryClientesendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object QryClientesbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object QryClientescidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object QryClientesestado: TStringField
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object QryClientesemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object QryClientestelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 14
    end
    object QryClientesdataNascimento: TSQLTimeStampField
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
  end
  object dtsClientes: TDataSource
    DataSet = QryClientes
    Left = 680
    Top = 496
  end
end
