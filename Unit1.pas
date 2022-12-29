unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseDlg, JvJVCLAboutForm, Vcl.StdCtrls;

type
  TformEditFile = class(TForm)
    memText: TMemo;
    btnOpen: TButton;
    lblFileOpened: TLabel;
    btnCancel: TButton;
    btnNew: TButton;
    btnUpdtSave: TButton;
    lblFileToUpdatePath: TLabel;
    btnCloseFile: TButton;
    procedure btnOpenClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdtSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseFileClick(Sender: TObject);
    procedure btnCloseFileMouseEnter(Sender: TObject);
    procedure btnOpenMouseEnter(Sender: TObject);
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
  lblFileOpened.Caption := '';
  lblFileToUpdatePath.Caption := '';

  memText.Lines.Create.Clear;

  btnUpdtSave.Visible := False;
  btnNew.Visible := True;
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
  if memText.Lines.Text = '' then
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

  t.SaveToFile('C:\Users\Jos� Augusto Braz\Desktop\Nova pasta\name.txt');}

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
    memText.Lines.SaveToFile(lblFileToUpdatePath.Caption);

    ShowMessage(FILE_UPDATE_SUCCESS);

  except on E : Exception do
    ShowMessage(FILE_UPDATE_ERROR +
                #13#10 + #13#10 +
                'Motivo: ' + e.Message);
  end;
end;

procedure TformEditFile.FormCreate(Sender: TObject);
begin
  lblFileOpened.Caption := '';
  lblFileToUpdatePath.Caption := '';
end;

end.
