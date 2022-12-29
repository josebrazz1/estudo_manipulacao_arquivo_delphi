unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TformCreateFile = class(TForm)
    txtFileName: TEdit;
    txtPath: TEdit;
    Button1: TButton;
    btnSave: TButton;
    btnCancel: TButton;
    ftrCB: TFilterComboBox;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCreateFile: TformCreateFile;

implementation

{$R *.dfm}

uses Global, SearchPath;

procedure TformCreateFile.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrOk;

  Release;
end;

procedure TformCreateFile.btnSaveClick(Sender: TObject);
var
  fileFilter : string;
begin
  if txtFileName.Text = '' then
    txtFileName.Text := 'Novo arquivo';

  {Checa se o arquivo existe no diret�rio}
  if FileExists(txtPath.Text + '\' + txtFileName.Text) then
  begin
    {Caso existe, pergunta se deseja sobrescrever o arquivo existente}
    if MessageDlg(FILE_ALREADY_EXISTS, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      {Caso n�o, cancela a execu��o}
      Exit;
  end;

  fileFilter := StringReplace(ftrCB.Mask,'*','',[rfIgnoreCase, rfReplaceAll]);
  try
    (Owner.FindComponent('memText') as TMemo).Lines
    .SaveToFile(txtPath.Text + '\' + txtFileName.Text + fileFilter);

    ShowMessage(FILE_CREATE_SUCCESS_AT +
                #13#10 + #13#10 +
                txtPath.Text + '\' + txtFileName.Text + fileFilter);

    txtFileName.Text := '';
    txtPath.Text := '';
    (Owner.FindComponent('memText') as TMemo).Lines.Clear;

    ModalResult := mrOk;
    Release;
  except on E : Exception do
    ShowMessage(FILE_CREATE_ERROR +
                #13#10 + #13#10 +
                'Motivo: ' + e.Message);
  end;
end;

procedure TformCreateFile.Button1Click(Sender: TObject);
var
  formSearchPath : TformSearchPath;
begin
  formSearchPath := TformSearchPath.Create(Self);

  formSearchPath.ShowModal;
end;

procedure TformCreateFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrOk;

  Release;
end;

end.
