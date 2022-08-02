inherited FrmLogin: TFrmLogin
  DesignLeft = 8
  DesignTop = 8
  object IWEdit1: TIWEdit [0]
    Left = 208
    Top = 106
    Width = 185
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 0
  end
  object IWEdit2: TIWEdit [1]
    Left = 208
    Top = 133
    Width = 185
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit2'
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
    OnAsyncClick = RecuperarAsyncClick
  end
  inherited TPS: TIWTemplateProcessorHTML
    Left = 400
    Top = 24
  end
end
