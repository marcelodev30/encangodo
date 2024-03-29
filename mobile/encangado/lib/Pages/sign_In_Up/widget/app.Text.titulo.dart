import 'package:flutter/material.dart';

class TextTitulo extends StatelessWidget {
  final String value;
  const TextTitulo({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: Text(value,
          style: const TextStyle(fontSize: 31.88, fontWeight: FontWeight.w700)),
    );
  }
}
