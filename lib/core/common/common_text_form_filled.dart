import 'package:flutter/material.dart';
import 'package:neta/core/constants/color_constant.dart';

class CommonTextFormFilled extends StatelessWidget {
  const CommonTextFormFilled(
      {super.key,
      this.headingText,
      this.controller,
      this.keyBoardType,
      this.suffixImage});
  final String? headingText;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;
  final String? suffixImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText ?? '',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        TextFormField(
          keyboardType: keyBoardType,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixImage != null
                ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                                height: 20,
                      width: 20,

                      suffixImage ?? '',
                      fit: BoxFit.contain,
                    ),
                )
                : null,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColorConstant.blueColor)),
          ),
        ),
      ],
    );
  }
}
