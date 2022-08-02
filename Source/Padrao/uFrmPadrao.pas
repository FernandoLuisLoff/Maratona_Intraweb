unit uFrmPadrao;

interface

uses
  Template.StarAdmin,

  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML;

type
  TFrmPadrao = class(TIWAppForm)
    TPS: TIWTemplateProcessorHTML;
    procedure TPSUnknownTag(const AName: string; var VValue: string);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TFrmPadrao.IWAppFormCreate(Sender: TObject);
begin

  if Self.Name = 'FrmLogin' then begin

    TPS.MasterTemplate := '';
    TPS.Templates.Default := 'app/'+Self.Name+'.html';

  end else begin

    TPS.MasterTemplate := 'app/master.html';
    TPS.Templates.Default := 'app/'+Self.Name+'.html';

  end;

end;

procedure TFrmPadrao.TPSUnknownTag(const AName: string; var VValue: string);
begin

  if AName = 'head' then
    if Self.Name = 'FrmLogin' then
      VValue := Get_Head_Login;

  if AName = 'footer' then
    if Self.Name = 'FrmLogin' then
      VValue := Get_Footer_Login;

end;

end.
