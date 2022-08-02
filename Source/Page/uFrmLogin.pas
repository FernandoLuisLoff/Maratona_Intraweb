unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, IWCompButton,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit,
  IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TFrmLogin = class(TFrmPadrao)
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    Login: TIWButton;
    Recuperar: TIWButton;
    procedure LoginAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure RecuperarAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.LoginAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  inherited;

    WebApplication.ShowMessage('Clicou em Login');

end;



procedure TFrmLogin.RecuperarAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;

    WebApplication.ShowMessage('Clicou em Login');

end;

initialization
  TFrmLogin.SetAsMainForm;

end.