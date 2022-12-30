unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseDlg, JvJVCLAboutForm, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEditFile: TformEditFile;

implementation

{$R *.dfm}

uses Unit2, SearchPath, Global;

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
  fileTxt : file;
  t : TStringList;
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
