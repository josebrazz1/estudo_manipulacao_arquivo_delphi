unit Global;

interface

var
  //Vari�veis globais do arquivo "InitializationFile.ini"
  //[application_default_folder]
  gDefaultFolder : string;
  gDontShowAgain : Boolean;
  //[text_editor_properties]
  gDefaultFont      : string;
  gDefaultFontSize  : Integer;

const
  {Mensagens}
  FILE_CREATE_SUCCESS_AT  : string = 'Arquivo criado com sucesso em: ';
  FILE_CREATE_ERROR       : string = 'Erro ao criar o arquivo!';
  FILE_ALREADY_EXISTS     : string = 'O arquivo j� existe, deseja sobrescrever?';
  NOT_ABLE_TO_OPEN_FILE   : string = 'Erro ao abrir o arquivo!';
  EDITING_FILE            : string = 'Arquivo aberto: ';
  FILE_UPDATE_SUCCESS     : string = 'Arquivo alterado com sucesso!';
  FILE_UPDATE_ERROR       : string = 'Erro ao alterar o arquivo!';
  FILE_EMPTY              : string = 'O arquivo n�o possui nenhum conte�do, deseja salv�-lo mesmo assim?';

  {Mensagens que aperecem em hints de componentes}
  HINT_CLOSE_FILE         : string = 'Fechar o arquivo em manipula��o';
  HINT_OPEN_EXISTING_FILE : string = 'Abrir arquivo existente';
  HINT_OPEN_SELECTED_FILE : string = 'Selecione um arquivo para abrir';
  HINT_ENTER_FILE_NAME    : string = 'Digite um nome para o arquivo.' +
                                      #13#10 +
                                      #13#10 +
                                      'Se deixar vazio o arquivo ser� salvo como "Novo Arquivo".';
  HINT_ENTER_FILE_PATH    : string = 'Informe o caminho onde o arquivo ser� salvo.';

  {Forms}
  T_FORM_EDIT_FILE_NAME       : string = 'TformEditFile';
  T_FORM_CREATE_FILE_NAME     : string = 'TformCreateFile';
  T_FORM_DEFAULT_FOLDER_NAME  : string = 'TformDefaultFolder';

  {Nome de arquivo INI}
  INI_FILE_NAME               : string = 'InitializationFile.ini';

  DELPHI_RESERVED_WORDS : array of string =
    ['AND','ARRAY','AS','ASM','BEGIN','CASE','CLASS','CONST','CONSTRUCTOR',
     'DESTRUCTOR', 'DISPINTERFACE','DIV','DO','DOWNTO','ELSE','END','EXCEPT','EXPORTS',
     'FILE','FINALIZATION','FINALLY','FOR','FUNCTION','GOTO','IF','IMPLEMENTATION','IN',
     'INHERITED','INITIALIZATION','INLINE','INTERFACE','IS','LABEL','LIBRARY','MOD','NIL',
     'NOT','OBJECT','OF','OR','OUT','PACKED','PROCEDURE','PROGRAM','PROPERTY',
     'RAISE','RECORD','REPEAT','RESOURCESTRING','SET','SHL','SHR','STRING','THEN',
     'THREDVAR','TO','TRY','TYPE','UNIT','UNTIL','USES','VAR','WHILE',
     'WITH','XOR'];

implementation

end.
