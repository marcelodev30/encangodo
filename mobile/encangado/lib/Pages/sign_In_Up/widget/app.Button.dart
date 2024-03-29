import 'package:encangado/shared/app.TextStyle.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  final String titulo;
  const Button(
      {super.key,
      required this.titulo,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 42,
      child: TextButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          child: Text(
            titulo,
            style: AppTextStyle.styleTextButton,
          )),
    );
  }
}
