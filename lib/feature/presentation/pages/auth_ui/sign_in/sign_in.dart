import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neta/core/constants/color_constant.dart';
import 'package:neta/feature/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:neta/feature/presentation/bloc/sign_in_bloc/sign_in_state.dart';

import '../../../../../core/common/common_decoration.dart';
import '../../../widgets/sign_in_widget/sign_in_button_widget.dart';
import '../../../widgets/sign_in_widget/sign_in_text_filled_widget.dart';
import '../../../widgets/sign_in_widget/sign_in_top_widget.dart';

class SignInUi extends StatefulWidget {
  const SignInUi({super.key});

  @override
  State<SignInUi> createState() => _SignInUiState();
}

class _SignInUiState extends State<SignInUi> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: BlocConsumer<SignInBloc,SignInState>(
        builder: (BuildContext context, SignInState state) {
          return Container(
            height: MediaQuery.sizeOf(context).height,
            decoration: appBoxDecoration,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 15,
                  children: [
                    SignInTopWidget(),
                    SignInTextFilledWidget(
                      isHidePassword: false,
                      mobileController: mobileController,
                      passwordController: passwordController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SignInButtonWidget()
                  ],
                ),
              ),
            ),
          );
        },
        listener: (BuildContext context, SignInState state) {},
      )),
    );
  }
}
