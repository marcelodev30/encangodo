import 'package:brasil_fields/brasil_fields.dart';
import 'package:encangado/Pages/home.pege.dart';
import 'package:encangado/Pages/login/shared/app.InputDecoration.dart';
import 'package:encangado/shared/app.TextStyle.dart';
import 'package:encangado/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('img/logo.svg'),
            const SizedBox(height: 25),
            Container(
              width: 387,
              height: 482,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(34.5)),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text('Login',
                      style: TextStyle(
                          fontSize: 31.88, fontWeight: FontWeight.w700)),
                  Form(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLabe(titulo: 'Telefone'),
                        TextFormField(inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ], decoration: AppInputDecoration.telefone),
                        const SizedBox(height: 15),
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 42,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePage()));
                                    },
                                    style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(66, 107, 255, 1)),
                                    ),
                                    child: Text(
                                      'Entrar',
                                      style: AppTextStyle.styleTextButton,
                                    )),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 150,
                                height: 42,
                                child: TextButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromRGBO(
                                                    191, 120, 12, 1))),
                                    child: Text('Cadastrar',
                                        style: AppTextStyle.styleTextButton)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
