program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {formEditFile},
  Unit2 in 'Unit2.pas' {formCreateFile},
  Global in 'Global.pas',
  SearchPath in 'SearchPath.pas' {formSearchPath},
  DefaultFolder in 'DefaultFolder.pas' {formDefaultFolder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformEditFile, formEditFile);
  Application.Run;
end.
