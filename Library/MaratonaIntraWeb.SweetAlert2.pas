unit MaratonaIntraWeb.SweetAlert2;

interface

  function swalSuccess(pTitulo, pTexto: String): String;
  function swalError(pTitulo, pTexto: String): String;

  Function Get_Lib_CSS_SweetAlert2 :String;
  Function Get_Lib_JS_SweetAlert2 :String;

implementation

uses
  System.SysUtils;

Function Get_Lib_CSS_SweetAlert2 :String;
begin
  Result := '<link rel="stylesheet" href="sweetalert2/sweetalert2.min.css" />';
end;

Function Get_Lib_JS_SweetAlert2 :String;
begin
  Result := '<script src="sweetalert2/sweetalert2.min.js"></script>';
end;

function swalError(pTitulo, pTexto: String): String;
var
  strAux : String;
begin
  strAux := 'swal.fire("' + pTitulo +'", "' + pTexto + '", "error");';

  Result := strAux;
end;

function swalSuccess(pTitulo, pTexto: String): String;
var
  strAux : String;
begin
  strAux := 'swal.fire("' + pTitulo +'", "' + pTexto + '", "success");';

  Result := strAux;
end;

end.
