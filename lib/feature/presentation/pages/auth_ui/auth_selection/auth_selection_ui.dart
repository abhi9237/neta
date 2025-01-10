import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neta/core/constants/color_constant.dart';
import 'package:neta/core/constants/image_constant.dart';
import 'package:neta/feature/presentation/bloc/auth_selection_cubit/auth_selection_cubit.dart';
import 'package:neta/feature/presentation/bloc/auth_selection_cubit/auth_selection_state.dart';

import '../../../../../core/common/common_button.dart';

class AuthSelectionUi extends StatefulWidget {
  const AuthSelectionUi({super.key});

  @override
  State<AuthSelectionUi> createState() => _AuthSelectionUiState();
}

class _AuthSelectionUiState extends State<AuthSelectionUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<AuthSelectionCubit, AuthSelectionState>(
          listener: (BuildContext context, AuthSelectionState state) {
            // if(state is AuthSignInState){
            //
            // }

          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  ImageConstant.appLogo,
                  height: 100,
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  ImageConstant.authSelectionImg,
                  fit: BoxFit.cover,
                ),
                Column(
                  spacing: 20,
                  children: [
                    CommonButton(
                      text: 'Sign In',
                      onTap: () {
                        context.read<AuthSelectionCubit>().onTapSignIn(context);
                      },
                    ),
                    CommonButton(
                      text: 'Sign Up',
                      onTap: () {
                        context.read<AuthSelectionCubit>().onTapSignUp(context);
                      },
                      buttonColor: AppColorConstant.blackColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
