import 'package:flutter/cupertino.dart';

class SignUpTopWidget extends StatelessWidget {
  const SignUpTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign Up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ],
    );
  }
}