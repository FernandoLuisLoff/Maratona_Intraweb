unit uFrmLogin;

interface

uses

  uServerController,
  uFrmPadrao,
  uFrmIndex,

  MaratonaIntraWeb.SweetAlert2,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IWCompButton,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit,
  IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML, IWHTMLTag;

type
  TFrmLogin = class(TFrmPadrao)
    edtUsuario: TIWEdit;
    edtSenha: TIWEdit;
    Login: TIWButton;
    Recuperar: TIWButton;
    procedure LoginAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure edtSenhaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
    procedure edtUsuarioHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
  private
    { Private declarations }
  public
    FrmIndex : TFrmIndex;
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.edtSenhaHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;

  Atag.Add('placeholder="*****"');

end;

procedure TFrmLogin.edtUsuarioHTMLTag(ASender: TObject; ATag: TIWHTMLTag);
begin
  inherited;

  Atag.Add('placeholder="Informe o Usu�rio"');

end;

procedure TFrmLogin.LoginAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  inherited;
    if edtUsuario.Text = '' then begin
      WebApplication.CallBackResponse.AddJavaScriptToExecute(SwalError('Aten��o','Informe seu usu�rio!'));
      Exit;
    end;

    if edtSenha.Text = '' then begin
      WebApplication.CallBackResponse.AddJavaScriptToExecute(SwalError('Aten��o','Informe sua senha de acesso!'));
      Exit;
    end;

    UserSession.UserId := 1;
    UserSession.UserLogado := edtUsuario.Text;

    FrmIndex := TFrmIndex.Create(Self);
    FrmIndex.Show

end;

initialization
  TFrmLogin.SetAsMainForm;

end.
