unit Template.StarAdmin;

interface

  const PathTheme = 'app/';

  Function Get_Head_Login : String;
  Function Get_Footer_Login : String;

implementation

Function Get_Head_Login : String;
begin

    Result := ' <link rel="stylesheet" href="' + PathTheme + 'vendors/iconfonts/mdi/css/materialdesignicons.min.css">   '+
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

end.
