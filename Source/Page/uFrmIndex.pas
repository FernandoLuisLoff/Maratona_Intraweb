unit uFrmIndex;

interface

uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl;

type
  TFrmIndex = class(TFrmPadrao)
    FINALIZAR: TIWButton;
    procedure FINALIZARAsyncClick(Sender: TObject; EventParams: TStringList);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FrmIndex: TFrmIndex;

implementation

uses
  uFrmLogin;

{$R *.dfm}

procedure TFrmIndex.FINALIZARAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  inherited;
    Self.Release;
    FrmLogin := TFrmLogin.Create(Self);
    FrmLogin.Show;
end;

end.
