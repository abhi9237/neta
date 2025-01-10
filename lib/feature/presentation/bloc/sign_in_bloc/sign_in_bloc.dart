import 'package:bloc/bloc.dart';
import 'package:neta/feature/presentation/bloc/sign_in_bloc/sign_in_event.dart';
import 'package:neta/feature/presentation/bloc/sign_in_bloc/sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInInitialState());

}