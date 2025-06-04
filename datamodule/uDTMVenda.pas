unit uDTMVenda;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDTMconexao, Datasnap.DBClient;

type
  TdtmVenda = class(TDataModule)
    QryProdutos: TFDQuery;
    QryProdutosprodutoID: TFDAutoIncField;
    QryProdutosnome: TStringField;
    QryProdutosvalor: TFMTBCDField;
    QryProdutosquantidade: TFMTBCDField;
    QryCliente: TFDQuery;
    QryClienteclienteID: TFDAutoIncField;
    QryClientenome: TStringField;
    cdsItensVenda: TClientDataSet;
    dtsItensVenda: TDataSource;
    dtsProdutos: TDataSource;
    dtsCliente: TDataSource;
    cdsItensVendaprodutoID: TIntegerField;
    cdsItensVendaNomeProduto: TStringField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;
  QryCliente.Open;
  QryProdutos.Open;
end;

procedure TdtmVenda.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.Close;
  QryCliente.Close;
  QryProdutos.Close;
end;

end.
