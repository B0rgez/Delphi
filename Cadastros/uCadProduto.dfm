inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 416
  ClientWidth = 899
  ExplicitWidth = 905
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 375
    Width = 899
    ExplicitTop = 375
    ExplicitWidth = 899
    inherited btnFechar: TBitBtn
      Left = 815
      ExplicitLeft = 815
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 899
    Height = 375
    ActivePage = tabManutencao
    ExplicitWidth = 899
    ExplicitHeight = 375
    inherited tabListagem: TTabSheet
      ExplicitWidth = 891
      ExplicitHeight = 347
      inherited Panel1: TPanel
        Width = 891
        ExplicitWidth = 891
      end
      inherited grdListagem: TDBGrid
        Width = 891
        Height = 274
        Columns = <
          item
            Expanded = False
            FieldName = 'produtoID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescricaoCategoria'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 891
      ExplicitHeight = 347
      object Label1: TLabel
        Left = 16
        Top = 141
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label2: TLabel
        Left = 16
        Top = 277
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label3: TLabel
        Left = 192
        Top = 277
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label4: TLabel
        Left = 455
        Top = 85
        Width = 52
        Height = 13
        Caption = 'Categorias'
      end
      object editProdutoID: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 40
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object editNome: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 104
        Width = 433
        Height = 21
        EditLabel.Width = 83
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome do Produto'
        MaxLength = 60
        TabOrder = 1
      end
      object editDescricao: TMemo
        Left = 16
        Top = 160
        Width = 857
        Height = 89
        MaxLength = 255
        TabOrder = 2
      end
      object lkpCategoria: TDBLookupComboBox
        Left = 455
        Top = 104
        Width = 418
        Height = 21
        KeyField = 'categoriaID'
        ListField = 'descricao'
        ListSource = dtsCategoria
        TabOrder = 3
        OnClick = lkpCategoriaClick
      end
      object editQuantidade: TJvCalcEdit
        Left = 192
        Top = 296
        Width = 142
        Height = 21
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
      end
      object editValor: TJvCalcEdit
        Left = 16
        Top = 296
        Width = 156
        Height = 21
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
    end
  end
  inherited dtsListagem: TDataSource
    Left = 260
    Top = 48
  end
  inherited qryListagem: TFDQuery
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT p.produtoID,'
      '       p.nome,'
      '       p.descricao,'
      '       p.valor,'
      '       p.quantidade,'
      '       p.categoriaID,'
      '       c.descricao AS DescricaoCategoria'
      'FROM produtos AS p'
      'LEFT JOIN categorias AS c ON c.categoriaID = p.categoriaID')
    Left = 196
    Top = 48
    object qryListagemprodutoID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoID'
      Origin = 'produtoID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryListagemnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object qryListagemvalor: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 18
      Size = 5
    end
    object qryListagemquantidade: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 18
      Size = 5
    end
    object qryListagemcategoriaID: TIntegerField
      DisplayLabel = 'Cod. Categoria'
      FieldName = 'categoriaID'
      Origin = 'categoriaID'
    end
    object qryListagemDescricaoCategoria: TStringField
      DisplayLabel = 'Descri'#231#227'o da Categoria'
      FieldName = 'DescricaoCategoria'
      Origin = 'DescricaoCategoria'
      Size = 100
    end
  end
  object QryCategoria: TFDQuery
    Connection = dtmConexao.ConexaoDBase
    SQL.Strings = (
      'SELECT categoriaID, descricao'
      'FROM categorias')
    Left = 580
    Top = 56
    object QryCategoriacategoriaID: TFDAutoIncField
      DisplayLabel = 'Codigo'
      FieldName = 'categoriaID'
      Origin = 'categoriaID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryCategoriadescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
  object dtsCategoria: TDataSource
    DataSet = QryCategoria
    Left = 652
    Top = 56
  end
end
