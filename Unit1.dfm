object formEditFile: TformEditFile
  Left = 0
  Top = 0
  Caption = 'Editar'
  ClientHeight = 331
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    457
    331)
  PixelsPerInch = 96
  TextHeight = 13
  object lblFileOpened: TLabel
    Left = 8
    Top = 8
    Width = 95
    Height = 13
    Caption = 'Nome do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFileToUpdatePath: TLabel
    Left = 8
    Top = 23
    Width = 84
    Height = 11
    Caption = 'Caminho do arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnOpen: TButton
    Left = 293
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = btnOpenClick
    OnMouseEnter = btnOpenMouseEnter
    ExplicitLeft = 220
  end
  object btnCancel: TButton
    Left = 374
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelClick
    ExplicitLeft = 301
  end
  object btnNew: TButton
    Left = 8
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNewClick
  end
  object btnUpdtSave: TButton
    Left = 8
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    TabOrder = 3
    Visible = False
    OnClick = btnUpdtSaveClick
  end
  object btnCloseFile: TButton
    Left = 424
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
    ExplicitLeft = 351
  end
  object richTxt: TRichEdit
    Left = 8
    Top = 40
    Width = 441
    Height = 255
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
    ExplicitWidth = 368
  end
  object Button1: TButton
    Left = 393
    Top = 9
    Width = 25
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 362
    Top = 9
    Width = 25
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'U'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
    ExplicitLeft = 289
  end
  object Button3: TButton
    Left = 331
    Top = 9
    Width = 25
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = Button3Click
    ExplicitLeft = 258
  end
end
