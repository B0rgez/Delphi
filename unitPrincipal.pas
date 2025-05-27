unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.ExtCtrls, uDTMconexao;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Relatorio1: TMenuItem;
    Cliente1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N1: TMenuItem;
    FecharMenu: TMenuItem;
    Cliente3: TMenuItem;
    Produto2: TMenuItem;
    Vendapordata1: TMenuItem;
    Vendas1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FecharMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias, uCadCliente, uCadproduto;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
   frmCadCliente := TfrmCadCliente.Create(Self);
   frmCadCliente.ShowModal;
   frmCadCliente.Release
end;

procedure TfrmPrincipal.FecharMenuClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmConexao := TdtmConexao.Create(Self);
  with dtmConexao.ConexaoDBase do
   begin
    Connected := true;
   end;

end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
  frmCadProduto := TfrmCadProduto.Create(Self);
   frmCadProduto.ShowModal;
   frmCadProduto.Release;
end;

end.
