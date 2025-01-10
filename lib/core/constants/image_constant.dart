class ImageConstant {
  ImageConstant._();
  static final ImageConstant _instance = ImageConstant._();
  factory ImageConstant() {
    return _instance;
  }

 static const String  path = 'assets/images/';
 static const String  appLogo = '${path}app_logo.png';
 static const String  authSelectionImg = '${path}auth_selection_img.png';
}

class AppIcons {
  AppIcons._();
  static final AppIcons _instance = AppIcons._();
  factory AppIcons() {
    return _instance;
  }

static const  String  path = 'assets/icons/';
static const  String  hidePasswordIcon = '${path}hide_password_icon.png';
static const  String  showPasswordIcon = '${path}show_password_icon.png';
}
