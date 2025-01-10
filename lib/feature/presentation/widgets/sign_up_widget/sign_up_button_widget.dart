import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neta/core/common/common_button.dart';
import '../../../../core/common/common_check_box.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      children: [
        Row(
          spacing: 10,
          children: [
            CheckBoxWidget(
              isSelected: false,
            ),
            Text(
              'I agree terms & condition',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        CommonButton(
          text: 'Sign Up',
        )
      ],
    );
  }
}
