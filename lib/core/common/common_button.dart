import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, this.text, this.buttonColor, this.onTap});

  final String? text;
  final Color? buttonColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonColor ?? AppColorConstant.blueColor,
        ),
        child: Text(
          text ?? '',
          style: TextStyle(
              color: AppColorConstant.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
