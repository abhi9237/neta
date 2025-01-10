import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:neta/config/route_constant/route_constant.dart';
import 'package:neta/config/router/app_route.dart';
import 'auth_selection_state.dart';

class AuthSelectionCubit extends Cubit<AuthSelectionState>{
  AuthSelectionCubit() : super(AuthInitialState());

  onTapSignIn(BuildContext context){
    emit(AuthSignInState());
    context.go(RouteConstant.login);
  }
  onTapSignUp(BuildContext context){
    emit(AuthSignUpState());
    context.go(RouteConstant.signUp);
  }


}