import 'package:flutter/material.dart';

import '../../../../../core/common/common_decoration.dart';
import '../../../widgets/sign_up_widget/sign_up_button_widget.dart';
import '../../../widgets/sign_up_widget/sign_up_text_filled_widget.dart';
import '../../../widgets/sign_up_widget/sign_up_top_widget.dart';

class SignUpUi extends StatelessWidget {
  const SignUpUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            decoration: appBoxDecoration,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    SignUpTopWidget(),
                    SignUpTextFilledWidget(),
                    SignUpButtonWidget() ,               ],
                ),
              ),
            ),
          )),
    );
  }
}
