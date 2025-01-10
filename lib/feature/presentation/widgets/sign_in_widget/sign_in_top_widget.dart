import 'package:flutter/cupertino.dart';

class SignInTopWidget extends StatelessWidget {
  const SignInTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sign In',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 16),)
      ],
    );
  }
}
