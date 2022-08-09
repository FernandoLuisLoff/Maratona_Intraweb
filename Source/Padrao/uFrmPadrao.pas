unit uFrmPadrao;

interface

uses
  Template.StarAdmin,
  MaratonaIntraWeb.SweetAlert2,

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
      VValue := Get_Head_Login + Get_Lib_Css_SweetAlert2
    else
      VValue := Get_Head;

  if AName = 'footer' then
    if Self.Name = 'FrmLogin' then
      VValue := Get_Footer_Login + Get_Lib_JS_SweetAlert2
    else
      VValue := Get_Footer;

  if AName = 'title' then
    VValue := Self.Title;

end;

end.
