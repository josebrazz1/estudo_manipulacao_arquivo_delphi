unit DefaultFolder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, inifiles;

type
  TformDefaultFolder = class(TForm)
    txtDefaultFolder: TEdit;
    btnOpenSearchPath: TButton;
    btnOk: TButton;
    Memo1: TMemo;
    ckBoxDontShowAgain: TCheckBox;
    procedure btnOpenSearchPathClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDefaultFolder: TformDefaultFolder;

implementation

{$R *.dfm}

uses Global, SearchPath;

procedure TformDefaultFolder.btnOkClick(Sender: TObject);
var
  iniFile : TIniFile;
begin
  iniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + INI_FILE_NAME);

  if ckBoxDontShowAgain.Checked then
    iniFile.WriteString('application_default_folder','dont_show_again','True')
  else
    iniFile.WriteString('application_default_folder','default_folder',txtDefaultFolder.Text);

  ModalResult := mrOk;
  Release;
end;

procedure TformDefaultFolder.btnOpenSearchPathClick(Sender: TObject);
var
  formSearchPath : TformSearchPath;
begin
  formSearchPath := TformSearchPath.Create(Self);
  formSearchPath.ShowModal;
end;

end.
