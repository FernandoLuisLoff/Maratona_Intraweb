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
    procedure IWAppFormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FrmIndex: TFrmIndex;

implementation

uses
  uServerController;

{$R *.dfm}

procedure TFrmIndex.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  UserSession.DescPageHead := 'Home';
end;

end.
