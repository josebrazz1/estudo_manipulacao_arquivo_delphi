object formEditFile: TformEditFile
  Left = 0
  Top = 0
  Caption = 'Novo'
  ClientHeight = 417
  ClientWidth = 722
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
    722
    417)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 558
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Abrir'
    TabOrder = 0
    OnClick = btnOpenClick
    OnMouseEnter = btnOpenMouseEnter
    ExplicitLeft = 394
  end
  object btnCancel: TButton
    Left = 639
    Top = 387
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelClick
    ExplicitLeft = 475
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
  end
  object btnCloseFile: TButton
    Left = 689
    Top = 34
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
    Top = 65
    Width = 706
    Height = 316
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
    OnSelectionChange = richTxtSelectionChange
  end
  object btnBold: TButton
    Left = 70
    Top = 34
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
    Top = 34
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
    Top = 34
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
  object cbColor: TColorBox
    Left = 101
    Top = 36
    Width = 100
    Height = 22
    TabOrder = 9
    OnChange = cbColorChange
  end
  object cbFont: TComboBox
    Left = 8
    Top = 8
    Width = 87
    Height = 21
    TabOrder = 10
    OnChange = cbFontChange
  end
  object cbFontSize: TComboBox
    Left = 101
    Top = 8
    Width = 52
    Height = 21
    TabOrder = 11
    OnChange = cbFontSizeChange
    Items.Strings = (
      '8'
      '9'
      '10'
      '11'
      '12'
      '14'
      '16'
      '18'
      '20'
      '22'
      '24'
      '26'
      '28'
      '36'
      '48'
      '72')
  end
end
