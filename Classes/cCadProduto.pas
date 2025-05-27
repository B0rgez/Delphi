unit cCadProduto;

interface

uses
 System.Classes, System.SysUtils, System.UITypes, Vcl.Controls, Vcl.ExtCtrls,
 Vcl.Dialogs, uDTMconexao, Data.DB, FireDAC.Stan.Param, FireDAC.Comp.Client,
 FireDAC.Comp.UI;

type
  TProduto = class
  private
   ConexaoDBase: TFDConnection;
   F_produtoID:      Integer; //Field (F) São propriedades
   F_nome:           String;
   F_descricao:      String;
   F_valor:          Double;
   F_quantidade:     Double;
   F_categoriaID:    Integer;

  public
   constructor Create(aConexao: TFDConnection);
   destructor Destroy; override;

   function InserirDB: Boolean;
   function AtualizarDB: Boolean;
   function ApagarDB: Boolean;
   function Selecionar(id: Integer): Boolean;

  published
    property codigo       :Integer      read F_produtoID       write F_produtoID;
    property nome         :String       read F_nome            write F_nome;
    property descricao    :String       read F_descricao       write F_descricao;
    property valor        :Double       read F_valor           write F_valor;
    property quantidade   :Double       read F_quantidade      write F_quantidade;
    property categoriaID  :Integer      read F_categoriaID     write F_categoriaID;
  end;


implementation

{$REGION 'Construtor e Desconstrutor'}

constructor TProduto.Create(aConexao: TFDConnection);
begin
  ConexaoDBase := aConexao;
end;

destructor TProduto.Destroy;
begin

  inherited;
end;

{$ENDREGION}

function TProduto.ApagarDB: Boolean;
var QryApagar: TFDQuery;
begin
 if MessageDlg('Apagar o Registro? ' + #13+#13+
              'Código: ' +IntToStr(F_produtoID)+ #13+
              'Descrição: '+F_nome, mtConfirmation,
              [mbYes, mbNo], 0 ) = mrNo then
 begin
  Result := false;
  abort;
 end;

 QryApagar:= TFDQuery.Create(nil);
 try
  Result := true;

  QryApagar.Connection := ConexaoDBase;
  QryApagar.SQL.Clear;
  QryApagar.SQL.Add('DELETE FROM produtos ' +
                    'WHERE produtoID = :produtoID ');
  QryApagar.ParamByName('produtoID').AsInteger := F_produtoID;

  try
   QryApagar.ExecSQL;
  except
   Result := false;
  end;
 finally
  if Assigned(QryApagar) then
   FreeAndNil(QryApagar);
 end;
end;

{$REGION 'CRUD'}
function TProduto.AtualizarDB: Boolean;
var
  QryAtualizar : TFDQuery;
begin
  QryAtualizar := TFDQuery.Create(nil);
  try
   Result := true;
   QryAtualizar.Connection := ConexaoDBase;
   QryAtualizar.SQL.Add(' UPDATE produtos               '+
                        'SET nome         = :nome       '+
                        ',descricao       = :descricao  '+
                        ',valor           = :valor      '+
                        ',quantidade      = :quantidade '+
                        ',categoriaID     = :categoriaID'+
                        'WHERE produtoID  = :produtoID  ');
   //parametros
   QryAtualizar.ParambyName('produtoID').AsInteger       := Self.F_produtoID;
   QryAtualizar.ParambyName('nome').AsString             := Self.F_nome;
   QryAtualizar.ParambyName('descricao').AsString        := Self.F_descricao;
   QryAtualizar.ParambyName('valor').AsFloat             := Self.F_valor;
   QryAtualizar.ParambyName('quantidade').AsFloat        := Self.F_quantidade;
   QryAtualizar.ParambyName('categoriaID').AsInteger     := Self.F_categoriaID;

   try
    QryAtualizar.ExecSQL;
   except
    Result := false;
   end;
  finally
   QryAtualizar.Free; //destruir objeto
  end;
end;

function TProduto.InserirDB: Boolean;
var
  QryInserir: TFDQuery;
begin
 QryInserir := TFDQuery.Create(nil);
 try
  Result := true;
  QryInserir.Connection := ConexaoDBase;
  QryInserir.SQL.Add('INSERT INTO produtos(nome, ' +
                     'descricao,      '+
                     'valor,          '+
                     'quantidade,     '+
                     'categoriaID)    '+
                     'VALUES(:nome,   '+
                     ':descricao,     '+
                     ':valor,         '+
                     ':quantidade,    '+
                     ':categoriaID)   ');

  QryInserir.ParambyName('nome').AsString          := Self.F_nome;
  QryInserir.ParambyName('descricao').AsString     := Self.F_descricao;
  QryInserir.ParambyName('valor').AsFloat          := Self.F_valor;
  QryInserir.ParambyName('quantidade').AsFloat     := Self.F_quantidade;
  QryInserir.ParambyName('categoriaID').AsInteger  := Self.F_categoriaID;

  try
   QryInserir.ExecSQL;
  except
   Result := false;
  end;
 finally
  if Assigned(QryInserir) then
   FreeAndNil(QryInserir);
 end;

end;

function TProduto.Selecionar(id: Integer): Boolean;
var
  QrySelecionar : TFDQuery;
 begin
  QrySelecionar := TFDQuery.Create(nil);
  try
   Result := true;
   QrySelecionar.Connection := ConexaoDBase;
   QrySelecionar.SQL.Clear;
   QrySelecionar.SQL.add('SELECT produtoID,  '+
                         'nome,              '+
                         'descricao,         '+
                         'valor,             '+
                         'quantidade,        '+
                         'categoriaID        '+
                         'FROM produtos      '+
                         'WHERE produtoID = :produtoID');
   QrySelecionar.ParamByName('produtoID').AsInteger := id;

   try
    QrySelecionar.Open;
    Self.F_produtoID          := QrySelecionar.FieldByName('produtoID').AsInteger;
    Self.F_nome               := QrySelecionar.FieldByName('nome').AsString;
    Self.F_descricao          := QrySelecionar.FieldByName('descricao').AsString;
    Self.F_valor              := QrySelecionar.FieldByName('valor').AsFloat;
    Self.F_quantidade         := QrySelecionar.FieldByName('quantidade').AsFloat;
    Self.F_categoriaID        := QrySelecionar.FieldByName('categoriaID').AsInteger;

   except
    Result := False;
   end;

  finally
    if Assigned(QrySelecionar) then   //Destructor
       FreeAndNil(QrySelecionar);
  end;
end;
{$ENDREGION}




end.
