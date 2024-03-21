import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLabe extends StatelessWidget {
  String titulo;
  
  TextLabe({super.key, required this.titulo, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Text(
        titulo,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
