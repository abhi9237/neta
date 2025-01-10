import 'package:flutter/material.dart';
import '../constants/color_constant.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({super.key, this.isSelected});
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: (isSelected ?? true) == true
              ? AppColorConstant.blueColor
              : Colors.transparent,
          border: Border.all(
              color: (isSelected ?? true) == true
                  ? Colors.transparent
                  : AppColorConstant.greyColor)),
      child: Icon(
        Icons.check,
        color: AppColorConstant.whiteColor,
        size: 14,
      ),
    );
  }
}
