unit uTelaHerenca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB,Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  uDTMconexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uEnum, System.UITypes, JvExMask, JvToolEdit,JvBaseEdits, cxTextEdit,
  cxCurrencyEdit;

type
  TfrmTelaHerenca = class(TForm)
    pnlRodaPe: TPanel;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    Panel1: TPanel;
    MaskPesquisar: TMaskEdit;
    btnPesquisar: TButton;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    dtsListagem: TDataSource;
    qryListagem: TFDQuery;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure MaskPesquisarChange(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);

private
    { Private declarations }


    procedure ControlarBotoes(btnNovo, btnAlterar,btnCancelar,
                              btnGravar, btnApagar: TBitBtn;
                              Navegador: TDBNavigator;
                              pgcPrincipal: TPageControl;
                              Flag : Boolean);
    procedure ControlarIndiceTab (pgcPrincipal: TPageControl; indice: Integer);
    function RetornarCampoTraduzido(Campo: String): String;
    procedure ExibirLabelIndice(Campo: String; aLabel: TLabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure DesabilitarEditPK;
    procedure LimparEdit;
    procedure BloqueiaCRTL_DEL_DBGrid(var Key: Word; Shift: TShiftState);

public
    { Public declarations }
    EstadoDoCadastro : TEstadoDoCadastro;
    indiceAtual : String;
    function Apagar: Boolean; virtual;
    function Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean; virtual;
end;

var
  frmTelaHerenca: TfrmTelaHerenca;

implementation

{$R *.dfm}

{$REGION 'Observa��es'}
// Tag: 1 - Chave Primaria - PK
// Tag: 2 - Campos Obrigat�rios
{$ENDREGION}

{$REGION 'Fun��es e Procedures de controle de tela'}

procedure TfrmTelaHerenca.ControlarBotoes(
  btnNovo, btnAlterar,btnCancelar,btnGravar, btnApagar: TBitBtn;
  Navegador:  TDBNavigator;
  pgcPrincipal:  TPageControl;
  Flag : Boolean
  );
begin
  btnNovo.Enabled     := Flag;
  btnApagar.Enabled   := Flag;
  btnAlterar.Enabled  := Flag;
  Navegador.Enabled   := Flag;
  pgcPrincipal.Pages[0].TabVisible := Flag;
  btnCancelar.Enabled := not(Flag);
  btnGravar.Enabled   := not(Flag);
end;

procedure TfrmTelaHerenca.ControlarIndiceTab( pgcPrincipal: TPageControl;
  indice: Integer);
begin
  if(pgcPrincipal.Pages[indice].TabVisible) then pgcPrincipal.TabIndex := 0;
end;

function TfrmTelaHerenca.RetornarCampoTraduzido(Campo: String) : String;
  var i:Integer;
begin
  for I := 0 to qryListagem.Fields.Count-1 do
   begin
    if lowercase(qryListagem.Fields[i].FieldName) = lowercase(campo) then
     begin
      Result := qryListagem.Fields[i].DisplayLabel;
      Break;
     end;
   end;
end;


procedure TfrmTelaHerenca.ExibirLabelIndice (Campo: String; aLabel:TLabel);
begin
  aLabel.Caption := RetornarCampoTraduzido(Campo);
end;

function TfrmTelaHerenca.ExisteCampoObrigatorio : Boolean;
var
  i:Integer;
begin
  Result := False;
  for i := 0 to ComponentCount - 1 do
   begin
    if (Components[i] is TLabeledEdit) then
     begin
      if (TLabeledEdit(Components[i]).Tag = 2) and
         (TLabeledEdit(Components[i]).Text = EmptyStr)then
       begin
        MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption +
                  ' � um campo obrigatorio' , mtInformation, [mbOK],0);
        TLabeledEdit(Components[i]).SetFocus;
        Result := true;
        Break;
       end;
     end;
   end;
end;

procedure TfrmTelaHerenca.DesabilitarEditPK;
 var i: Integer;
begin
 for I := 0 to ComponentCount - 1 do
  begin
   if (TLabeledEdit(Components[i]).Tag = 1) then
    begin
     TLabeledEdit(Components[i]).Enabled := False;
     break;
    end;
  end;
end;

procedure TfrmTelaHerenca.LimparEdit;
var
  i: Integer;
begin
 for i := 0 to ComponentCount - 1 do
  begin
   if (Components[i] is TLabeledEdit) then
    TLabeledEdit(Components[i]).Text := EmptyStr
   else if (Components[i] is TEdit) then
    TEdit(Components[i]).Text := EmptyStr
   else if (Components[i] is TMemo) then
    TMemo(Components[i]).Text := EmptyStr
   else if (Components[i] is TDBLookupComboBox) then
    TDBLookupComboBox(Components[i]).KeyValue := 0
   else if (Components[i] is TJvCalcEdit ) then
    TJvCalcEdit(Components[i]).Value := 0
   else if(Components[i] is TJvDateEdit) then
    TJvDateEdit(Components[i]).Date := 0
   else if (Components[i] is TMaskEdit) then
    TMaskEdit(Components[i]).Text := EmptyStr;
  end;
end;

{$ENDREGION}

{$REGION 'M�TODOS VIRTUAIS'}

function TfrmTelaHerenca.Apagar: Boolean;
begin
  ShowMessage('Deletado com Sucesso!');
  Result := True;

end;

function TfrmTelaHerenca.Gravar(EstadoDoCadastro:TEstadoDoCadastro): Boolean;
begin
  if (EstadoDoCadastro = ecInserir) then
   ShowMessage('Inserir')
  else if (EstadoDoCadastro=ecAlterar) then
   ShowMessage('Alterado');
   Result := true;
end;
{$ENDREGION}

{$REGION 'Botoes'}
procedure TfrmTelaHerenca.btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
  btnNavigator, pgcPrincipal, false );

  EstadoDoCadastro := ecInserir;
  LimparEdit;
end;

procedure TfrmTelaHerenca.btnAlterarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar,btnCancelar,btnGravar,btnApagar,
  btnNavigator, pgcPrincipal, false );

  EstadoDoCadastro := ecAlterar;

end;

procedure TfrmTelaHerenca.btnCancelarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar,btnCancelar,btnGravar,btnApagar,
  btnNavigator, pgcPrincipal, true );

  ControlarIndiceTab(pgcPrincipal, 0);
  EstadoDoCadastro := ecNenhum;
  LimparEdit;
end;

procedure TfrmTelaHerenca.btnGravarClick(Sender: TObject);
begin
  if (ExisteCampoObrigatorio)= true then
  abort;
  try
   if Gravar(EstadoDoCadastro) then //Metodo Virtual
    begin
     ControlarBotoes(btnNovo, btnAlterar,btnCancelar,btnGravar,btnApagar,
     btnNavigator, pgcPrincipal, true);
     ControlarIndiceTab(pgcPrincipal, 0);
     EstadoDoCadastro := ecNenhum;
     LimparEdit;
     QryListagem.Refresh;
    end
   else
    begin
     MessageDlg('Erro na Grava��o', mtError, [mbok], 0);
    end;
   Finally
  end;
end;

procedure TfrmTelaHerenca.btnApagarClick(Sender: TObject);
begin
  try
   if (Apagar) then
   begin
    ControlarBotoes(btnNovo, btnAlterar,btnCancelar,btnGravar,btnApagar,
    btnNavigator, pgcPrincipal, true );
    ControlarIndiceTab(pgcPrincipal, 0);
    LimparEdit;
    QryListagem.Refresh;      //atualiza a lista da  TDBGrid, Refresh � comando interno
   end
   else begin
    MessageDlg('Erro na Exclus�o', mtError, [mbok], 0);
   end;
  Finally
   EstadoDoCadastro := ecNenhum;
  end;
end;

procedure TfrmTelaHerenca.btnFecharClick(Sender: TObject);
begin
  close;
end;

{$ENDREGION}

procedure TfrmTelaHerenca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryListagem.Close;
end;

procedure TfrmTelaHerenca.FormCreate(Sender: TObject);
begin
  QryListagem.Connection := dtmConexao.ConexaoDBase;
  dtsListagem.DataSet := qryListagem;
  grdListagem.DataSource := dtsListagem;
  grdListagem.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,
                          dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,
                          dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
end;

procedure TfrmTelaHerenca.FormShow(Sender: TObject);
begin
  if (qryListagem.SQL.Text <> EmptyStr) then
   begin
    qryListagem.IndexFieldNames := IndiceAtual;
    ExibirLabelIndice(IndiceAtual,lblIndice);
    qryListagem.Open;
   end;
  ControlarIndiceTab(pgcPrincipal, 0);
  DesabilitarEditPK();
  ControlarBotoes(btnNovo, btnAlterar,btnCancelar,btnGravar,
                  btnApagar,btnNavigator, pgcPrincipal, true);
end;

procedure TfrmTelaHerenca.grdListagemDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TfrmTelaHerenca.grdListagemTitleClick(Column: TColumn);
begin
  IndiceAtual := Column.FieldName;
  qryListagem.IndexFieldNames := IndiceAtual;
  ExibirLabelIndice(IndiceAtual, lblIndice);
end;

procedure TfrmTelaHerenca.MaskPesquisarChange(Sender: TObject);
begin
  qryListagem.Locate(IndiceAtual, TMaskEdit(Sender).Text, [loPartialKey]);
  qryListagem.Locate(IndiceAtual, MaskPesquisar.Text, [loPartialKey]);
end;

 procedure TfrmTelaHerenca.BloqueiaCRTL_DEL_DBGrid (var Key: Word; Shift: TShiftState);
 begin
  //Bloqueia o CTRL + DEL
   if(Shift = [ssCtrl]) and (Key = 64) then
    Key := 0;
 end;

end.
