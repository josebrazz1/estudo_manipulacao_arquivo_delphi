object formEditFile: TformEditFile
  Left = 0
  Top = 0
  Caption = 'Editar'
  ClientHeight = 331
  ClientWidth = 384
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
    384
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
  object memText: TMemo
    Left = 8
    Top = 40
    Width = 368
    Height = 255
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object btnOpen: TButton
    Left = 220
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Abrir'
    TabOrder = 1
    OnClick = btnOpenClick
    OnMouseEnter = btnOpenMouseEnter
  end
  object btnCancel: TButton
    Left = 301
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnNew: TButton
    Left = 8
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnNewClick
  end
  object btnUpdtSave: TButton
    Left = 8
    Top = 301
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Salvar'
    TabOrder = 4
    Visible = False
    OnClick = btnUpdtSaveClick
  end
  object btnCloseFile: TButton
    Left = 351
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
    TabOrder = 5
    OnClick = btnCloseFileClick
    OnMouseEnter = btnCloseFileMouseEnter
  end
end
