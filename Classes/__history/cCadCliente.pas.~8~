unit cCadCliente;

interface

uses
 System.Classes, System.SysUtils, System.UITypes, Vcl.Controls, Vcl.ExtCtrls,
 Vcl.Dialogs, uDTMconexao, Data.DB, FireDAC.Stan.Param, FireDAC.Comp.Client,
 FireDAC.Comp.UI;

type
  TCliente = class
  private
   ConexaoDBase: TFDConnection;
   F_clienteID: Integer; //Field (F) São propriedades
   F_nome: String;
   F_endereco: String;
   F_cidade: String;
   F_bairro: String;
   F_estado: String;
   F_cep: String;
   F_telefone: String;
   F_email: String;
   F_dataNascimento: TDateTime;

  public
   constructor Create(aConexao: TFDConnection);
   destructor Destroy; override;

   function InserirDB: Boolean;
   function AtualizarDB: Boolean;
   function ApagarDB: Boolean;
   function Selecionar(id: Integer): Boolean;

  published
    property codigo   :Integer          read F_clienteID       write F_clienteID;
    property nome     :String           read F_nome            write F_nome;
    property endereco :String           read F_endereco        write F_endereco;
    property cidade   :String           read F_cidade          write F_cidade;
    property bairro   :String           read F_bairro          write F_bairro;
    property estado   :String           read F_estado          write F_estado;
    property cep      :String           read F_cep             write F_cep;
    property telefone :String           read F_telefone        write F_telefone;
    property email    :String           read F_email           write F_email;
    property dataNascimento :TDateTime  read F_dataNascimento  write F_dataNascimento;
  end;

implementation


{ TCliente }

constructor TCliente.Create(aConexao: TFDConnection);
begin
  ConexaoDBase := aConexao;
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

function TCliente.InserirDB: Boolean;
 var
  QryInserir: TFDQuery;
begin
 QryInserir := TFDQuery.Create(nil);
 try
  Result := true;
  QryInserir.Connection := ConexaoDBase;
  QryInserir.SQL.Add(' INSERT INTO clientes(nome, ' +
                    'endereco,  '+
                    'cidade,    '+
                    'bairro,    '+
                    'estado,    '+
                    'cep,       '+
                    'telefone,  '+
                    'email,     '+
                    'dataNascimento)' +
                    ' VALUES(:nome , ' +
                    ':endereco     , ' +
                    ':cidade       , ' +
                    ':bairro       , ' +
                    ':estado       , ' +
                    ':cep          , ' +
                    ':telefone     , ' +
                    ':email        , ' +
                    ':datanascimento)');


  QryInserir.ParambyName('nome').AsString       := Self.F_nome;
  QryInserir.ParambyName('endereco').AsString   := Self.F_endereco;
  QryInserir.ParambyName('cidade').AsString     := Self.F_cidade;
  QryInserir.ParambyName('bairro').AsString     := Self.F_bairro;
  QryInserir.ParambyName('estado').AsString     := Self.F_estado;
  QryInserir.ParambyName('cep').AsString        := Self.F_cep;
  QryInserir.ParambyName('telefone').AsString   := Self.F_telefone;
  QryInserir.ParambyName('email').AsString      := Self.F_email;
  QryInserir.ParambyName('dataNascimento').AsDateTime := Self.F_dataNascimento;

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

function TCliente.Selecionar(id: Integer): Boolean;
 var
  QrySelecionar : TFDQuery;
 begin
  QrySelecionar := TFDQuery.Create(nil);
  try
   Result := true;
   QrySelecionar.Connection := ConexaoDBase;
   QrySelecionar.SQL.Clear;
   QrySelecionar.SQL.add(' SELECT clienteID,' +
                         'nome,                 '+
                         'endereco,             '+
                         'cidade,               '+
                         'bairro,               '+
                         'estado,               '+
                         'cep,                  '+
                         'telefone,             '+
                         'email,                '+
                         'datanascimento       '+
                         ' FROM clientes        '+
                         ' WHERE clienteID = :clienteID');
   QrySelecionar.ParamByName('clienteID').AsInteger := id;

   try
    QrySelecionar.Open;
    Self.F_clienteID         := QrySelecionar.FieldByName('clienteID').AsInteger;
    Self.F_nome              := QrySelecionar.FieldByName('nome').AsString;
    Self.F_endereco          := QrySelecionar.FieldByName('endereco').AsString;
    Self.F_cidade            := QrySelecionar.FieldByName('cidade').AsString;
    Self.F_bairro            := QrySelecionar.FieldByName('bairro').AsString;
    Self.F_estado            := QrySelecionar.FieldByName('estado').AsString;
    Self.F_cep               := QrySelecionar.FieldByName('cep').AsString;
    Self.F_telefone          := QrySelecionar.FieldByName('telefone').AsString;
    Self.F_email             := QrySelecionar.FieldByName('email').AsString;
    Self.F_dataNascimento    := QrySelecionar.FieldByName('dataNascimento').AsDateTime ;
   except
    Result := False;
   end;

  finally
    if Assigned(QrySelecionar) then   //Destructor
       FreeAndNil(QrySelecionar);
  end;
end;

function TCliente.ApagarDB: Boolean;
var QryApagar: TFDQuery;
begin
 if MessageDlg('Apagar o Registro? ' + #13+#13+
              'Código: ' +IntToStr(F_clienteID)+ #13+
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
  QryApagar.SQL.Add('DELETE FROM clientes ' +
                    'WHERE clienteID = :clienteID ');
  QryApagar.ParamByName('clienteID').AsInteger := F_clienteID;

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

function TCliente.AtualizarDB: Boolean;
begin
 var
 QryAtualizar : TFDQuery;
  begin
  QryAtualizar := TFDQuery.Create(nil);
  try
   Result := true;
   QryAtualizar.Connection := ConexaoDBase;
   QryAtualizar.SQL.Add(' UPDATE clientes ' +
                        'SET nome         = :nome ' +
                        ',endereco        = :endereco' +
                        ',cidade          = :cidade' +
                        ',bairro          = :bairro'+
                        ',estado          = :estado'+
                        ',cep             = : cep'+
                        ',telefone        = :telefone'+
                        ',email           = :email' +
                        ',dataNAscimento  = :dataNascimento'+
                        'WHERE categoriaID = :categoriaID');
   //parametros
   QryAtualizar.ParambyName('clienteID').AsInteger := Self.F_clienteID;
   QryAtualizar.ParambyName('nome').AsString       := Self.F_nome;
   QryAtualizar.ParambyName('endereco').AsString   := Self.F_endereco;
   QryAtualizar.ParambyName('cidade').AsString     := Self.F_cidade;
   QryAtualizar.ParambyName('bairro').AsString     := Self.F_bairro;
   QryAtualizar.ParambyName('estado').AsString     := Self.F_estado;
   QryAtualizar.ParambyName('cep').AsString        := Self.F_cep;
   QryAtualizar.ParambyName('telefone').AsString   := Self.F_telefone;
   QryAtualizar.ParambyName('email').AsString      := Self.F_email;
   QryAtualizar.ParambyName('dataNascimento').AsDateTime := Self.F_dataNascimento;

   try
    QryAtualizar.ExecSQL;
   except
    Result := false;
   end;
  finally
   QryAtualizar.Free; //destruir objeto
  end;
 end;
end;

end.