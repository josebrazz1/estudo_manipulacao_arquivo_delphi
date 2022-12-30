unit Global;

interface

const
  {Mensagens}
  FILE_CREATE_SUCCESS_AT  : string = 'Arquivo criado com sucesso em: ';
  FILE_CREATE_ERROR       : string = 'Erro ao criar o arquivo!';
  FILE_ALREADY_EXISTS     : string = 'O arquivo j� existe, deseja sobrescrever?';
  NOT_ABLE_TO_OPEN_FILE   : string = 'Erro ao abrir o arquivo!';
  EDITING_FILE            : string = 'Arquivo aberto: ';
  FILE_UPDATE_SUCCESS     : string = 'Arquivo alterado com sucesso!';
  FILE_UPDATE_ERROR       : string = 'Erro ao alterar o arquivo!';
  FILE_EMPTY              : string = 'O arquivo n�o possui nenhum conte�do, deseja continuar mesmo assim?';

  HINT_CLOSE_FILE         : string = 'Fechar o arquivo em manipula��o';
  HINT_OPEN_EXISTING_FILE : string = 'Abrir arquivo existente';
  HINT_OPEN_SELECTED_FILE : string = 'Selecione um arquivo para abrir';

  {Forms}
  T_FORM_EDIT_FILE_NAME     : string = 'TformEditFile';
  T_FORM_CREATE_FILE_NAME   : string = 'TformCreateFile';

implementation

end.