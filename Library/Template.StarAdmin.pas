unit Template.StarAdmin;

interface

  const PathTheme = 'app/';

  Function JqueryMaskPlugin : String;

  Function Get_Head : String;
  Function Get_Footer : String;

  Function Get_Head_Login : String;
  Function Get_Footer_Login : String;

  Function Get_Page_Head(Titulo:String) : String;

implementation

uses
  System.SysUtils;

Function JqueryMaskPlugin : String;
begin
  Result := ' <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> '+
            ' <script src="../js/jquery.mask.min.js"></script>                                       ';
end;

Function Get_Head : String;
begin

    Result := ' <meta charset="utf-8">                                                                                 '+
              ' <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">                 '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/mdi/css/materialdesignicons.min.css">  '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/ionicons/dist/css/ionicons.css">       '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">  '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/css/vendor.bundle.base.css">                     '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/css/vendor.bundle.addons.css">                   '+
              ' <link rel="stylesheet" href="' + PathTheme + 'css/shared/style.css">                                   '+
              ' <link rel="stylesheet" href="' + PathTheme + 'css/demo_1/style.css">                                   '+
              ' <link rel="shortcut icon" href="' + PathTheme + 'images/favicon.ico" />                                ';

end;

Function Get_Footer : String;
begin

    Result := ' <script src="' + PathTheme + 'vendors/js/vendor.bundle.base.js"></script>                   '+
              ' <script src="' + PathTheme + 'vendors/js/vendor.bundle.addons.js"></script>                 '+
              ' <script src="' + PathTheme + 'js/shared/off-canvas.js"></script>                            '+
              ' <script src="' + PathTheme + 'js/shared/misc.js"></script>                                  '+
              ' <script src="' + PathTheme + 'js/shared/jquery.cookie.js" type="text/javascript"></script>  ';

end;

Function Get_Head_Login : String;
begin

    Result := ' <meta charset="utf-8">                                                                                  '+
              ' <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">                  '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/mdi/css/materialdesignicons.min.css">   '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/ionicons/dist/css/ionicons.css">        '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">   '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/css/vendor.bundle.base.css">                      '+
              ' <link rel="stylesheet" href="' + PathTheme + 'vendors/css/vendor.bundle.addons.css">                    '+
              ' <link rel="stylesheet" href="' + PathTheme + 'css/shared/style.css">                                    '+
              ' <link rel="shortcut icon" href="' + PathTheme + 'images/favicon.ico" />                                 ';

end;

Function Get_Footer_Login : String;
begin

    Result := ' <script src="' + PathTheme + 'vendors/js/vendor.bundle.base.js"></script>                  '+
              ' <script src="' + PathTheme + 'vendors/js/vendor.bundle.addons.js"></script>                '+
              ' <script src="' + PathTheme + 'js/shared/off-canvas.js"></script>                           '+
              ' <script src="' + PathTheme + 'js/shared/misc.js"></script>                                 '+
              ' <script src="' + PathTheme + 'js/shared/jquery.cookie.js" type="text/javascript"></script> ';

end;

Function Get_Page_Head(Titulo:String) : String;
begin

  Result := ' <div class="row page-title-header">                                    '+
            '  <div class="col-12">                                                  '+
            '    <div class="page-header">                                           '+
            '      <h4 class="page-title">'+Titulo+'</h4>                             '+
            '<div class="quick-link-wrapper w-100 d-md-flex flex-md-wrap text-right">'+
            '        <ul class="quick-links ml-auto">                                ';

            if uppercase(Titulo) = 'HOME' then begin
              Result := Result + ' <li><a href="#">Home</a></li>                     ';
            end else begin
              Result := Result + ' <li><a href="#">Home</a></li>                     '+
                                 ' <li><a href="#">'+Titulo+'</a></li>               ';
            end;

            Result := Result + '        </ul>                                        '+
                               '      </div>                                         '+
                               '    </div>                                           '+
                               '  </div>                                             '+
                               ' </div>                                              ';

end;

end.
