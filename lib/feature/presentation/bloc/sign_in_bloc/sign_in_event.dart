abstract class SignInEvent {}

class ShowHidePasswordEvent extends SignInEvent {
  bool? isHidePassword;
  ShowHidePasswordEvent({this.isHidePassword});
}

class SignInClickEvent extends SignInEvent {}
