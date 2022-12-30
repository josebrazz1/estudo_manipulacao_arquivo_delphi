unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseDlg, JvJVCLAboutForm, Vcl.StdCtrls, inifiles,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TformEditFile = class(TForm)
    btnOpen: TButton;
    btnCancel: TButton;
    btnNew: TButton;
    btnUpdtSave: TButton;
    btnCloseFile: TButton;
    richTxt: TRichEdit;
    btnBold: TButton;
    btnUnderline: TButton;
    btnItalic: TButton;
    cbColor: TColorBox;
    cbFont: TComboBox;
    cbFontSize: TComboBox;
    procedure btnOpenClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdtSaveClick(Sender: TObject);
    procedure btnCloseFileClick(Sender: TObject);
    procedure btnCloseFileMouseEnter(Sender: TObject);
    procedure btnOpenMouseEnter(Sender: TObject);
    procedure btnBoldClick(Sender: TObject);
    procedure btnUnderlineClick(Sender: TObject);
    procedure btnItalicClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbColorChange(Sender: TObject);
    procedure cbFontChange(Sender: TObject);
    procedure cbFontSizeChange(Sender: TObject);
    procedure richTxtSelectionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEditFile: TformEditFile;

implementation

{$R *.dfm}

uses Unit2, SearchPath, Global, DefaultFolder;

procedure TformEditFile.btnCancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformEditFile.btnCloseFileClick(Sender: TObject);
begin
  richTxt.Lines.Create.Clear;

  btnUpdtSave.Visible := False;
  btnNew.Visible := True;

  Self.Caption := 'Novo';
end;

procedure TformEditFile.btnCloseFileMouseEnter(Sender: TObject);
begin
  btnCloseFile.ShowHint := True;
  btnCloseFile.Hint := HINT_CLOSE_FILE;
end;

procedure TformEditFile.btnNewClick(Sender: TObject);
var
  formCreateFile : TformCreateFile;
begin
  if richTxt.Lines.Text = '' then
  begin
    if MessageDlg(FILE_EMPTY, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      formCreateFile := TformCreateFile.Create(Self);

      formCreateFile.ShowModal;
    end;
  end
  else
  begin
    formCreateFile := TformCreateFile.Create(Self);

    formCreateFile.ShowModal;
  end;
end;

procedure TformEditFile.btnOpenClick(Sender: TObject);
var
  formSearchPath : TformSearchPath;
begin
  {AssignFile(fileTxt,'asdf');
  t := TStringList.Create;

  t.Add(memText.Lines.Text);

  t.SaveToFile('C:\Users\José Augusto Braz\Desktop\Nova pasta\name.txt');}

  formSearchPath := TformSearchPath.Create(Self);

  formSearchPath.Show;
end;

procedure TformEditFile.btnOpenMouseEnter(Sender: TObject);
begin
  btnOpen.ShowHint := True;
  btnOpen.Hint := HINT_OPEN_EXISTING_FILE;
end;

procedure TformEditFile.btnUpdtSaveClick(Sender: TObject);
begin
  try
    richTxt.Lines.SaveToFile(Self.Caption);

    ShowMessage(FILE_UPDATE_SUCCESS);

  except on E : Exception do
    ShowMessage(FILE_UPDATE_ERROR +
                #13#10 + #13#10 +
                'Motivo: ' + e.Message);
  end;
end;

procedure TformEditFile.cbColorChange(Sender: TObject);
begin
  richTxt.SelAttributes.Color := cbColor.Selected;
end;

procedure TformEditFile.cbFontChange(Sender: TObject);
begin
  richTxt.SelAttributes.Name := cbFont.Items[cbFont.ItemIndex];
end;

procedure TformEditFile.cbFontSizeChange(Sender: TObject);
begin
  richTxt.SelAttributes.Size := StrToInt(cbFontSize.Items[cbFontSize.ItemIndex]);
end;

procedure TformEditFile.FormCreate(Sender: TObject);
var
  formDefaultfolder : TformDefaultFolder;
  iniFile : TIniFile;
begin
  {Abre ou cria o arquivo ini}
  iniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + INI_FILE_NAME);

  {Lê as definições de inicialização contidas no arquivo ini e alimenta as variáveis
  globais}
  gDefaultFolder := iniFile.ReadString('application_default_folder','default_folder','');
  gDontShowAgain := StrToBool(iniFile.ReadString('application_default_folder','dont_show_again', 'False'));
  gDefaultFont := iniFile.ReadString('text_editor_properties','default_font','');
  gDefaultFontSize := iniFile.ReadInteger('text_editor_properties','default_font_size',0);

  if (gDefaultFolder = '') and (not gDontShowAgain) then
  begin
    formDefaultfolder := TformDefaultFolder.Create(Self);
    formDefaultfolder.ShowModal;
  end;

  //Alimenta a combobox de fontes
  cbFont.Items := Screen.Fonts;
  {Define o estilo de fonte padrão}
  cbFont.ItemIndex := cbFont.Items.IndexOf(gDefaultFont);
  richTxt.Font.Name := cbFont.Items[cbFont.ItemIndex];
  {Define o tamanho de fonte padrão}
  cbFontSize.ItemIndex := cbFontSize.Items.IndexOf(IntToStr(gDefaultFontSize));
  richTxt.Font.Size := StrToInt(cbFontSize.Items[cbFontSize.ItemIndex]);
end;

procedure TformEditFile.richTxtSelectionChange(Sender: TObject);
begin
  {Verifica o estilo do texto selecionado e atualiza  o estado dos botões}
  if fsBold in richTxt.SelAttributes.Style then
    btnBold.Font.Style := btnBold.Font.Style + [fsBold]
  else
    btnBold.Font.Style := btnBold.Font.Style - [fsBold];

  if fsItalic in richTxt.SelAttributes.Style then
    btnItalic.Font.Style := btnItalic.Font.Style + [fsItalic]
  else
    btnItalic.Font.Style := btnItalic.Font.Style - [fsItalic];

  if fsUnderline in richTxt.SelAttributes.Style then
    btnUnderline.Font.Style := btnUnderline.Font.Style + [fsUnderline]
  else
    btnUnderline.Font.Style := btnUnderline.Font.Style - [fsUnderline];


end;

procedure TformEditFile.btnBoldClick(Sender: TObject);
begin
  if fsBold in btnBold.Font.Style then
    btnBold.Font.Style := btnBold.Font.Style - [fsBold]
  else
    btnBold.Font.Style := btnBold.Font.Style + [fsBold];

  if fsBold in richTxt.SelAttributes.Style then
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style - [fsBold]
  else
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style + [fsBold];
end;

procedure TformEditFile.btnUnderlineClick(Sender: TObject);
begin
  if fsUnderline in btnUnderline.Font.Style then
    btnUnderline.Font.Style := btnUnderline.Font.Style - [fsUnderline]
  else
    btnUnderline.Font.Style := btnUnderline.Font.Style + [fsUnderline];

  if fsUnderline in richTxt.SelAttributes.Style then
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style - [fsUnderline]
  else
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style + [fsUnderline];
end;

procedure TformEditFile.btnItalicClick(Sender: TObject);
begin
  if fsItalic in btnItalic.Font.Style then
    btnItalic.Font.Style := btnItalic.Font.Style - [fsItalic]
  else
    btnItalic.Font.Style := btnItalic.Font.Style + [fsItalic];

  if fsItalic in richTxt.SelAttributes.Style then
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style - [fsItalic]
  else
    richTxt.SelAttributes.Style := richTxt.SelAttributes.Style + [fsItalic];
end;

end.
