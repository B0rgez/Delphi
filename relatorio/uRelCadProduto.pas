unit uRelCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  RLReport, RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRelCadProduto = class(TForm)
    QryProdutos: TFDQuery;
    dtsProdutos: TDataSource;
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    rlsData: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLPanel1: TRLPanel;
    QryProdutosprodutoID: TFDAutoIncField;
    QryProdutosnome: TStringField;
    QryProdutosdescricao: TStringField;
    QryProdutosvalor: TFMTBCDField;
    QryProdutosquantidade: TFMTBCDField;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProduto: TfrmRelCadProduto;

implementation

{$R *.dfm}

procedure TfrmRelCadProduto.FormCreate(Sender: TObject);
begin
  QryProdutos.Open;
end;

procedure TfrmRelCadProduto.FormDestroy(Sender: TObject);
begin
  QryProdutos.Close;
end;

end.
