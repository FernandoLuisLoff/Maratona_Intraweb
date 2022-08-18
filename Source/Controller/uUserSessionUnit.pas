unit uUserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    FUserEmail: String;
    FUserId: Longint;
    FUserLogado: String;
    FDescPageHead: String;
    procedure SetUserEmail(const Value: String);
    procedure SetUserId(const Value: Longint);
    procedure SetUserLogado(const Value: String);
    procedure SetDescPageHead(const Value: String);
    { Private declarations }
  public

    Property UserId:Longint read FUserId write SetUserId;
    Property UserLogado:String read FUserLogado write SetUserLogado;
    Property UserEmail:String read FUserEmail write SetUserEmail;

    Property DescPageHead:String read FDescPageHead write SetDescPageHead;

    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

procedure TIWUserSession.SetDescPageHead(const Value: String);
begin
  FDescPageHead := Value;
end;

procedure TIWUserSession.SetUserEmail(const Value: String);
begin
  FUserEmail := Value;
end;

procedure TIWUserSession.SetUserId(const Value: Longint);
begin
  FUserId := Value;
end;

procedure TIWUserSession.SetUserLogado(const Value: String);
begin
  FUserLogado := Value;
end;

end.