inherited FrmLogin: TFrmLogin
  Title = 'Login'
  DesignLeft = 8
  DesignTop = 8
  object edtUsuario: TIWEdit [0]
    Left = 208
    Top = 106
    Width = 185
    Height = 21
    OnHTMLTag = edtUsuarioHTMLTag
    Css = 'form-control'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'EdtUsuario'
    SubmitOnAsyncEvent = True
    TabOrder = 0
  end
  object edtSenha: TIWEdit [1]
    Left = 208
    Top = 133
    Width = 185
    Height = 21
    OnHTMLTag = edtSenhaHTMLTag
    Css = 'form-control'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtSenha'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = True
  end
  object Login: TIWButton [2]
    Left = 208
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BTNLOGIN'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Login'
    TabOrder = 2
    OnAsyncClick = LoginAsyncClick
  end
  object Recuperar: TIWButton [3]
    Left = 289
    Top = 160
    Width = 104
    Height = 25
    Caption = 'BTNRECUPERAR'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Recuperar'
    TabOrder = 3
  end
  inherited TPS: TIWTemplateProcessorHTML
    Left = 400
    Top = 24
  end
end
