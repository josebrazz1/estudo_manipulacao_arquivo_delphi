object formEditFile: TformEditFile
  Left = 0
  Top = 0
  Caption = 'Novo'
  ClientHeight = 417
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    558
    417)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 394
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = btnOpenClick
    OnMouseEnter = btnOpenMouseEnter
    ExplicitLeft = 220
    ExplicitTop = 301
  end
  object btnCancel: TButton
    Left = 475
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelClick
    ExplicitLeft = 301
    ExplicitTop = 301
  end
  object btnNew: TButton
    Left = 8
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNewClick
    ExplicitTop = 301
  end
  object btnUpdtSave: TButton
    Left = 8
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    TabOrder = 3
    Visible = False
    OnClick = btnUpdtSaveClick
    ExplicitTop = 301
  end
  object btnCloseFile: TButton
    Left = 525
    Top = 9
    Width = 25
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnCloseFileClick
    OnMouseEnter = btnCloseFileMouseEnter
  end
  object richTxt: TRichEdit
    Left = 8
    Top = 40
    Width = 542
    Height = 341
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 5
    Zoom = 100
  end
  object btnBold: TButton
    Left = 70
    Top = 9
    Width = 25
    Height = 25
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnBoldClick
  end
  object btnUnderline: TButton
    Left = 39
    Top = 9
    Width = 25
    Height = 25
    Caption = 'U'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnUnderlineClick
  end
  object btnItalic: TButton
    Left = 8
    Top = 9
    Width = 25
    Height = 25
    Caption = 'I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnItalicClick
  end
end
