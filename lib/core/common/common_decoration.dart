import 'package:flutter/cupertino.dart';

import '../constants/color_constant.dart';

BoxDecoration get appBoxDecoration =>  BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.center,
    colors: [
      AppColorConstant.blueColor.withValues(alpha:0.2),
      AppColorConstant.blueColor.withValues(alpha:0.0),
      AppColorConstant.blueColor.withValues(alpha:0.0),

    ],
  ),
);