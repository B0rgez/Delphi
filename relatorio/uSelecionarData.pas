unit uSelecionarData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  JvExMask, JvToolEdit, System.DateUtils,System.UITypes;

type
  TfrmSelecionarData = class(TForm)
    editDataInicial: TJvDateEdit;
    editDataFinal: TJvDateEdit;
    DataInicial: TLabel;
    Label2: TLabel;
    btnOK: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarData: TfrmSelecionarData;

implementation

{$R *.dfm}

procedure TfrmSelecionarData.btnOKClick(Sender: TObject);
begin
  if(editDataFinal.Date) < (editDataInicial.Date) then
   begin
    MessageDlg('Data Final não pode ser maior que a Data Inicial', mtInformation, [mbOK],0);
    EditDataFinal.SetFocus;
    abort;
   end;

  if (EditDataFinal.Date = 0) OR (EditDataInicial.Date = 0) then
   begin
    MessageDlg('Data Inicial ou Final são campo obrigatorio' , mtInformation, [mbOK],0);
    EditDataInicial.SetFocus;
    abort;
   end;

  Close;
end;

procedure TfrmSelecionarData.FormShow(Sender: TObject);
begin
  EditDataInicial.Date := StartOfTheMonth(Date); //pega a data do mes do sistema
  EditDataFinal.Date := EndOfTheMonth(Date);
end;

end.
