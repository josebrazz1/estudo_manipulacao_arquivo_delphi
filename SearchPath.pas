unit SearchPath;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ComCtrls;

type
  TformSearchPath = class(TForm)
    dirLBFilePath: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    txtFullPath: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    flLB: TFileListBox;
    FilterComboBox1: TFilterComboBox;
    procedure dirLBFilePathChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure flLBClick(Sender: TObject);
    procedure flLBMouseEnter(Sender: TObject);
    procedure flLBDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSearchPath: TformSearchPath;

implementation

{$R *.dfm}

uses Unit2, Global;

procedure TformSearchPath.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrOk;

  Release;
end;

procedure TformSearchPath.btnOkClick(Sender: TObject);
var
  loadedFile : TextFile;
  loadedFileName : string;
  loadedFileLine : string;
  loadedFileContent : string;
  formattedText : TStringStream;
begin
  if Owner.ToString = T_FORM_CREATE_FILE_NAME then
  begin
    (Owner.FindComponent('txtFilePath') as TEdit).Text := txtFullPath.Text;

    ModalResult := mrOk;

    Release;
  end
  else if Owner.ToString = T_FORM_EDIT_FILE_NAME then
  begin
    try
      AssignFile(loadedFile, txtFullPath.Text);
      Reset(loadedFile);

      while not Eof(loadedFile) do
      begin
        Readln(loadedFile, loadedFileLine);

        loadedFileContent := loadedFileContent + loadedFileLine + #13#10;
      end;

      formattedText := TStringStream.Create(loadedFileContent);

      //(Owner.FindComponent('richTxt') as TRichEdit).Lines.Text := loadedFileContent;
      (Owner.FindComponent('richTxt') as TRichEdit).Lines.LoadFromFile(txtFullPath.Text);
      (Owner.FindComponent('btnUpdtSave') as TButton).Visible := True;
      (Owner.FindComponent('btnNew') as TButton).Visible := False;
      (Owner as TForm).Caption := txtFullPath.Text;

      ModalResult := mrOk;
      Release;
    except on E : Exception do
      ShowMessage(NOT_ABLE_TO_OPEN_FILE +
                  #13#10 +
                  #13#10 +
                  'Motivo: ' + e.Message);
    end;
    CloseFile(loadedFile);
  end;
end;

procedure TformSearchPath.dirLBFilePathChange(Sender: TObject);
begin
  txtFullPath.Text := dirLBFilePath.Directory;
end;

procedure TformSearchPath.flLBClick(Sender: TObject);
var
  i : Integer;
  slctFile : string;
begin
  for i := 0 to flLB.Count - 1 do
  begin
    if flLB.Selected[i] then
      slctFile := flLB.Items[i];
  end;

  txtFullPath.Text := dirLBFilePath.Directory + '\' + slctFile;

  //(Owner.FindComponent('lblFileOpened') as TLabel).Visible := False;
  //(Owner.FindComponent('lblFileOpened') as TLabel).Caption := EDITING_FILE + slctFile;
end;

procedure TformSearchPath.flLBDblClick(Sender: TObject);
var
  loadedFile : TextFile;
  loadedFileName : string;
  loadedFileLine : string;
  loadedFileContent : string;
  formattedText : TStringStream;
begin
try
      AssignFile(loadedFile, txtFullPath.Text);
      Reset(loadedFile);

      while not Eof(loadedFile) do
      begin
        Readln(loadedFile, loadedFileLine);

        loadedFileContent := loadedFileContent + loadedFileLine + #13#10;
      end;

      formattedText := TStringStream.Create(loadedFileContent);

      //(Owner.FindComponent('richTxt') as TRichEdit).Lines.Text := loadedFileContent;
      (Owner.FindComponent('richTxt') as TRichEdit).Lines.LoadFromFile(txtFullPath.Text);
      (Owner.FindComponent('btnUpdtSave') as TButton).Visible := True;
      (Owner.FindComponent('btnNew') as TButton).Visible := False;
      (Owner as TForm).Caption := txtFullPath.Text;

      ModalResult := mrOk;
      Release;
    except on E : Exception do
      ShowMessage(NOT_ABLE_TO_OPEN_FILE +
                  #13#10 +
                  #13#10 +
                  'Motivo: ' + e.Message);
    end;
    CloseFile(loadedFile);
end;

procedure TformSearchPath.flLBMouseEnter(Sender: TObject);
begin
  flLB.ShowHint := True;
  flLB.Hint := HINT_OPEN_SELECTED_FILE;
end;

procedure TformSearchPath.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrOk;

  Release;
end;

procedure TformSearchPath.FormCreate(Sender: TObject);
begin
  if Owner.ToString = T_FORM_CREATE_FILE_NAME then
  begin
    flLB.Visible := False;
    //dirLBFilePath.Width := 468;
  end
  else if Owner.ToString = T_FORM_EDIT_FILE_NAME then
    flLB.Visible := True;
end;

end.
