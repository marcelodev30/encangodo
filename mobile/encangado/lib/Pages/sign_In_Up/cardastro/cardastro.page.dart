import 'package:brasil_fields/brasil_fields.dart';
import 'package:encangado/Pages/sign_In_Up/design.page.dart';
import 'package:encangado/Pages/sign_In_Up/shared/app.InputDecoration.dart';
import 'package:encangado/Pages/sign_In_Up/widget/app.Button.dart';
import 'package:encangado/Pages/sign_In_Up/widget/app.Text.titulo.dart';
import 'package:encangado/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardastroPage extends StatelessWidget {
  const CardastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignInUpPage(
        dados: Column(
      children: [
        const TextTitulo(value: 'Cardastro'),
        Form(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextLabe(titulo: 'Telefone'),
              TextFormField(inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TelefoneInputFormatter(),
              ], decoration: AppInputDecoration.telefone),
              TextLabe(titulo: 'Nome'),
              TextFormField(decoration: AppInputDecoration.nome),
              const SizedBox(height: 10),
              TextLabe(titulo: 'Senha'),
              TextFormField(decoration: AppInputDecoration.senha),
              const SizedBox(height: 10),
              TextLabe(titulo: 'Senha novamente'),
              TextFormField(decoration: AppInputDecoration.senha),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                      titulo: 'Cancela',
                      color: Colors.red,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  const SizedBox(width: 10),
                  Button(
                      titulo: 'Cadastrar',
                      color: const Color.fromRGBO(66, 107, 255, 1),
                      onTap: () {}),
                ],
              ),
            ],
          ),
        )),
      ],
    ));
  }
}
