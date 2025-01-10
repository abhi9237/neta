import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neta/core/constants/image_constant.dart';

import '../../../../core/common/common_text_form_filled.dart';

class SignInTextFilledWidget extends StatelessWidget {
  const SignInTextFilledWidget({super.key,this.isHidePassword,this.passwordController,this.mobileController});
final  bool? isHidePassword;
final TextEditingController? mobileController;
final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        CommonTextFormFilled(
          controller: mobileController,
          keyBoardType: TextInputType.phone,
          headingText: 'Mobile',
        ),
        CommonTextFormFilled(
          controller: passwordController,
          headingText: 'Password',
          suffixImage:(isHidePassword ?? true) ? AppIcons.hidePasswordIcon:AppIcons.showPasswordIcon,
        )
      ],
    );
  }
}
