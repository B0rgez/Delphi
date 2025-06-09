unit cControleEstoque;

interface

uses
 System.Classes, System.SysUtils, System.UITypes, Vcl.Controls, Vcl.ExtCtrls,
 Vcl.Dialogs, uDTMconexao, Data.DB, FireDAC.Stan.Param, FireDAC.Comp.Client,
 FireDAC.Comp.UI, uDTMVenda, Datasnap.DBClient;

type
  TControleEstoque = class

  private
   ConexaoDBase : TFDConnection;
   F_produtoID: Integer;
   F_quantidade: Double;

  public
   constructor Create(aConexao: TFDConnection);
   destructor Destroy; override;
   function BaixarEstoque: Boolean;
   function RetornarEstoque: Boolean;

  published
   property ProdutoID:  Integer read F_produtoID  write F_produtoID;
   property Quantidade: Double  read F_quantidade write F_quantidade;

  end;

implementation


{$REGION 'Contrutor e Descontrutor'}
constructor TControleEstoque.Create(aConexao: TFDConnection);
begin
  ConexaoDBase := aConexao;
end;

destructor TControleEstoque.Destroy;
begin
  inherited;
end;
{$ENDREGION}


{$REGION 'Metodos'}

function TControleEstoque.BaixarEstoque: Boolean;
var
   QryBaixarEstoque : TFDQuery;
begin
  QryBaixarEstoque := TFDQuery.Create(nil);
  try
   Result := True;
   QryBaixarEstoque.Connection := ConexaoDBase;
   QryBaixarEstoque.SQL.Clear;
   QryBaixarEstoque.SQL.Add('UPDATE produtos ');
   QryBaixarEstoque.SQL.Add('SET quantidade = quantidade - :QtdeBaixa '); //esta retirando do estoque
   QryBaixarEstoque.SQL.Add('WHERE produtoID = :ProdutoID');

   QryBaixarEstoque.ParamByName('ProdutoID').AsInteger := ProdutoID;
   QryBaixarEstoque.ParamByName('QtdeBaixa').AsFloat := Quantidade;

   try
    QryBaixarEstoque.ExecSQL;
   except
    Result := false;
   end;

  finally
    if Assigned(QryBaixarEstoque) then
       FreeAndNil(QryBaixarEstoque)
  end;
end;

function TControleEstoque.RetornarEstoque: Boolean;
var
   QryRetornarEstoque : TFDQuery;
begin
  QryRetornarEstoque := TFDQuery.Create(nil);
  try
   QryRetornarEstoque.Connection := ConexaoDBase;
   QryRetornarEstoque.SQL.Clear;
   QryRetornarEstoque.SQL.Add('UPDATE produtos ');
   QryRetornarEstoque.SQL.Add('SET quantidade = quantidade + :QtdeRetorno '); //soma pois esta adicionando ao estoque
   QryRetornarEstoque.SQL.Add('WHERE produtoID = :ProdutoID');

   QryRetornarEstoque.ParamByName('ProdutoID').AsInteger := ProdutoID;
   QryRetornarEstoque.ParamByName('QtdeRetorno').AsFloat := Quantidade;

   try
    QryRetornarEstoque.ExecSQL;
   except
    Result := false;
   end;

  finally
    if Assigned(QryRetornarEstoque) then
       FreeAndNil(QryRetornarEstoque)
  end;
end;

{$ENDREGION}

end.
