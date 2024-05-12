import 'package:encangado/shared/app.Color.dart';
import 'package:encangado/shared/app.imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddProdutosPage extends StatefulWidget {
  const AddProdutosPage({super.key});

  @override
  State<AddProdutosPage> createState() => _AddProdutosPageState();
}

class _AddProdutosPageState extends State<AddProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.greenNav,
        title: SvgPicture.asset(
          AppImages.logo,
          width: 100,
          height: 40,
        ),
      ),
    );
  }
}
