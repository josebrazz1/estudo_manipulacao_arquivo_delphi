object formSearchPath: TformSearchPath
  Left = 0
  Top = 0
  Caption = 'Selecionar'
  ClientHeight = 261
  ClientWidth = 484
  Color = clBtnFace
  Constraints.MaxHeight = 300
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 300
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    484
    261)
  PixelsPerInch = 96
  TextHeight = 13
  object dirLBFilePath: TDirectoryListBox
    Left = 8
    Top = 33
    Width = 312
    Height = 190
    Anchors = [akLeft, akTop, akRight, akBottom]
    FileList = flLB
    TabOrder = 0
    OnChange = dirLBFilePathChange
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 8
    Width = 90
    Height = 19
    DirList = dirLBFilePath
    TabOrder = 1
  end
  object txtFullPath: TEdit
    Left = 104
    Top = 8
    Width = 372
    Height = 21
    TabOrder = 2
  end
  object btnOk: TButton
    Left = 8
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 89
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelClick
  end
  object flLB: TFileListBox
    Left = 326
    Top = 33
    Width = 150
    Height = 190
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 5
    OnClick = flLBClick
    OnDblClick = flLBDblClick
    OnMouseEnter = flLBMouseEnter
  end
  object FilterComboBox1: TFilterComboBox
    Left = 326
    Top = 229
    Width = 150
    Height = 21
    FileList = flLB
    Filter = 'All files (*.*)|*.*|txt (*.txt*)|*txt*|RTF(*.RTF*)|*RTF*'
    TabOrder = 6
  end
end
