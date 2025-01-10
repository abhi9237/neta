import 'package:flutter/material.dart';
import 'package:neta/core/common/common_button.dart';
import 'package:neta/core/constants/color_constant.dart';

import '../../../../../core/common/common_decoration.dart';
import '../../../widgets/otp_verification_widget/otp_verification_filled_widget.dart';

class OtpVerificationUi extends StatelessWidget {
  const OtpVerificationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: appBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Otp Verification',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              OtpVerificationPinPutWidget(),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Time 00:30',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )),
              CommonButton(
                text: 'Submit',
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColorConstant.blueColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
