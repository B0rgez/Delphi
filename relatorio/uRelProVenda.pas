unit uRelProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  RLReport, RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,uDTMVenda, uSelecionarData;

type
  TfrmRelProVenda = class(TForm)
    QryVendas: TFDQuery;
    dtsVendas: TDataSource;
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    rlsData: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    BandDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult2: TRLDBResult;
    QryVendasvendaID: TFDAutoIncField;
    QryVendasclienteID: TIntegerField;
    QryVendasnome: TStringField;
    QryVendasdataVenda: TSQLTimeStampField;
    QryVendastotalVenda: TFMTBCDField;
    QryVendaItens: TFDQuery;
    dtsVendaItens: TDataSource;
    QryVendaItensvendaID: TIntegerField;
    QryVendaItensprodutoID: TIntegerField;
    QryVendaItensNome: TStringField;
    QryVendaItensquantidade: TFMTBCDField;
    QryVendaItensvalorUnitario: TFMTBCDField;
    QryVendaItenstotalProduto: TFMTBCDField;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw4: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand5: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProVenda: TfrmRelProVenda;

implementation

{$R *.dfm}

procedure TfrmRelProVenda.FormDestroy(Sender: TObject);
begin
  QryVendas.Close;
  QryVendaItens.Close;
end;

end.
