import 'package:flutter/cupertino.dart';
import 'package:neta/core/common/common_button.dart';
import 'package:neta/core/constants/color_constant.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CommonButton(text: 'Sign In',buttonColor: AppColorConstant.blueColor,),
        Text(
       'Forgot Password',
          style: TextStyle(
              color: AppColorConstant.blueColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),

      ],
    );
  }
}
