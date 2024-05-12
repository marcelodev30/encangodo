// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  String text;
  Icon icon;
  Color color;
  void Function()? onPressed;

  ButtonApp(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 60,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 7),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
