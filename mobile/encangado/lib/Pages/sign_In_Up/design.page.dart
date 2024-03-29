import 'package:encangado/shared/app.imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class DesignInUpPage extends StatelessWidget {
  Widget dados;
   DesignInUpPage({super.key,required this.dados});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              SvgPicture.asset(AppImages.logo),
                const SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width ,
                decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34.5)),
              child:Column(
                children: [
                  dados,
                  const SizedBox(height: 30)
                ],
              ),
              ),Expanded(child: Container())
              ],),
        ),
      ),
    );
  }
}