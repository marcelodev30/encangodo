import 'package:encangado/shared/app.Size.dart';
import 'package:encangado/shared/app.Color.dart';
import 'package:encangado/shared/app.TextStyle.dart';
import 'package:flutter/material.dart';

class AppInputDecoration {
  static get nome => InputDecoration(
      hintText: 'Digite sua Nome..',
      hintStyle: AppTextStyle.labelStyle,
      prefixIcon: Icon(
        Icons.person_outline_outlined,
        color: AppColor.gray,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.borderRadiusInput),
      ));

  static get telefone => InputDecoration(
      hintText: 'Digite sua Telefone..',
      hintStyle: AppTextStyle.labelStyle,
      prefixIcon: Icon(
        Icons.phone,
        color: AppColor.gray,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.borderRadiusInput),
      ));

  static get senha => InputDecoration(
      hintText: 'Digite sua Senha..',
      hintStyle: AppTextStyle.labelStyle,
      suffixIcon: Icon(
        Icons.visibility,
        color: AppColor.gray,
      ),
      prefixIcon: Icon(
        Icons.password,
        color: AppColor.gray,
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadiusInput)));
}
