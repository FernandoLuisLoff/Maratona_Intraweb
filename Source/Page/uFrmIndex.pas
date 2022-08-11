unit uFrmIndex;

interface

uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML;

type
  TFrmIndex = class(TFrmPadrao)
    procedure IWAppFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure prc_Acoes(EventParams : TStringList);
    { Public declarations }
  end;

var
  FrmIndex: TFrmIndex;

implementation

{$R *.dfm}

uses uFrmLogin;

procedure TFrmIndex.IWAppFormCreate(Sender: TObject);
begin
  inherited;
  WebApplication.RegisterCallBack('prc_Acoes',prc_Acoes);
end;

procedure TFrmIndex.prc_Acoes(EventParams : TStringList);
var
  sl: TStringList;
  IdAcao,i,CountParam: Integer;
  Acao,s: String;

begin

  sl := TStringList.Create;
  CountParam := 0;

  try

    sl.StrictDelimiter := True;
    sl.CommaText := EventParams.Values['Params'];
    s := sl.CommaText;

    CountParam := TStringList(sl).Count;

    for I := 0 to pred(CountParam) do begin

      if I = 0 then
        Acao := sl.ValueFromIndex[I];

      if I = 1 then
        IdAcao := StrToInt(sl.ValueFromIndex[I]);

    end;

    if Acao = 'Fechar' then begin

      Self.Release;
      FrmLogin := TFrmLogin.Create(nil);
      FrmLogin.show;

    end;

  except

  end;

end;

end.
