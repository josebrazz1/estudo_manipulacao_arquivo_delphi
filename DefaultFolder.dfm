object formDefaultFolder: TformDefaultFolder
  Left = 0
  Top = 0
  Caption = 'formDefaultFolder'
  ClientHeight = 148
  ClientWidth = 484
  Color = clBtnFace
  Constraints.MaxHeight = 188
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 105
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object txtDefaultFolder: TEdit
    Left = 8
    Top = 89
    Width = 387
    Height = 21
    TabOrder = 0
    TextHint = 'Diret'#243'rio padr'#227'o'
  end
  object btnOpenSearchPath: TButton
    Left = 401
    Top = 89
    Width = 75
    Height = 21
    Caption = '...'
    TabOrder = 1
    OnClick = btnOpenSearchPathClick
  end
  object btnOk: TButton
    Left = 8
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnOkClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 468
    Height = 75
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      ''
      ''
      'Voc'#234' pode selecionar uma pasta padr'#227'o para salvar seus arquivos.')
    ParentFont = False
    TabOrder = 3
  end
  object ckBoxDontShowAgain: TCheckBox
    Left = 337
    Top = 123
    Width = 139
    Height = 17
    Caption = 'N'#227'o mostrar novamente'
    TabOrder = 4
  end
end
