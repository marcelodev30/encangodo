import 'package:encangado/shared/app.Color.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static get labelStyle => TextStyle(
        color: AppColor.gray,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      );
  static get styleTextButton => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      );
}
