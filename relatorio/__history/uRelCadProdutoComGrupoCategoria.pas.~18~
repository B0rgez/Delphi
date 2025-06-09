unit uRelCadProdutoComGrupoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  RLReport, RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRelCadProdutoComGrupoCategoria = class(TForm)
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
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    QryProdutosProdutoID: TFDAutoIncField;
    QryProdutosNome: TStringField;
    QryProdutosDescricao: TStringField;
    QryProdutosValor: TFMTBCDField;
    QryProdutosQuantidade: TFMTBCDField;
    QryProdutosCategoriaID: TIntegerField;
    QryProdutosDescricaoCategoria: TStringField;
    RLSystemInfo1: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria;

implementation

{$R *.dfm}

procedure TfrmRelCadProdutoComGrupoCategoria.FormCreate(Sender: TObject);
begin
  QryProdutos.Open;
end;

procedure TfrmRelCadProdutoComGrupoCategoria.FormDestroy(Sender: TObject);
begin
  QryProdutos.Close;
end;

end.
