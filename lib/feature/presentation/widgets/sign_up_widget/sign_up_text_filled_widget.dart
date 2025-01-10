import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/common_text_form_filled.dart';

class SignUpTextFilledWidget extends StatelessWidget {
  const SignUpTextFilledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        CommonTextFormFilled(
          keyBoardType: TextInputType.phone,
          headingText: 'Mobile Number',
        ),
        CommonTextFormFilled(
          headingText: 'State',
        ),
        CommonTextFormFilled(
          headingText: 'Constituency',
        ),
        CommonTextFormFilled(
          headingText: 'Gender',
        ),

      ],
    );
  }
}
