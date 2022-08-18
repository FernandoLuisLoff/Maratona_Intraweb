unit uFrmListaPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton;

type
  TFrmListaPessoas = class(TFrmPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaPessoas: TFrmListaPessoas;

implementation

{$R *.dfm}

end.
