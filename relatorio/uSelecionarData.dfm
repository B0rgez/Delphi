object frmSelecionarData: TfrmSelecionarData
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecionar data '
  ClientHeight = 140
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DataInicial: TLabel
    Left = 8
    Top = 13
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label2: TLabel
    Left = 143
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object editDataInicial: TJvDateEdit
    Left = 8
    Top = 32
    Width = 105
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a data'
    CalendarStyle = csDialog
    ShowNullDate = False
    TabOrder = 0
  end
  object editDataFinal: TJvDateEdit
    Left = 143
    Top = 32
    Width = 105
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a data'
    CalendarStyle = csDialog
    ShowNullDate = False
    TabOrder = 1
  end
  object btnOK: TBitBtn
    Left = 8
    Top = 80
    Width = 240
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOKClick
  end
end
