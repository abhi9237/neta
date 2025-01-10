import 'package:flutter/cupertino.dart';
import 'package:neta/core/constants/color_constant.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationPinPutWidget extends StatelessWidget {
  const OtpVerificationPinPutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      length: 4,
      onCompleted: (pin) => print(pin),
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: TextStyle(fontSize: 20, color: AppColorConstant.blackColor, fontWeight: FontWeight.w600),
        decoration: BoxDecoration(
          border: Border.all(color: AppColorConstant.greyColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
