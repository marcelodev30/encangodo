import 'package:brasil_fields/brasil_fields.dart';
import 'package:encangado/Pages/home.pege.dart';
import 'package:encangado/Pages/sign_In_Up/cardastro/cardastro.page.dart';
import 'package:encangado/Pages/sign_In_Up/design.page.dart';
import 'package:encangado/Pages/sign_In_Up/shared/app.InputDecoration.dart';
import 'package:encangado/Pages/sign_In_Up/widget/app.Button.dart';
import 'package:encangado/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DesignInUpPage(
      dados: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Login',
              style: TextStyle(fontSize: 31.88, fontWeight: FontWeight.w700)),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextLabe(titulo: 'Telefone'),
                TextFormField(inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter(),
                ], decoration: AppInputDecoration.telefone),
                const SizedBox(height: 10),
                TextLabe(titulo: 'Senha'),
                TextFormField(decoration: AppInputDecoration.senha),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu sua senha',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                          titulo: 'Entrar',
                          color: const Color.fromRGBO(66, 107, 255, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          }),
                      const SizedBox(width: 10),
                      Button(
                          titulo: 'Cadastrar',
                          color: const Color.fromRGBO(191, 120, 12, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CardastroPage()));
                          }),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
