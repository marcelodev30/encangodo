import 'package:encangado/Models/produto.dart';
import 'package:encangado/Models/usuario.dart';
import 'package:encangado/Pages/detailproduct.dart';
import 'package:encangado/Pages/home/design_home_page.dart';
import 'package:encangado/Pages/negociacoes/negociacoes.page.dart';
import 'package:encangado/Pages/perfil/perfil.page.dart';
import 'package:encangado/shared/widgets/post.dart';
import 'package:flutter/material.dart';

class HomePagev1 extends StatefulWidget {
  const HomePagev1({super.key});

  @override
  State<HomePagev1> createState() => _HomePagev1State();
}

class _HomePagev1State extends State<HomePagev1> {
  @override
  Widget build(BuildContext context) {
    return DesignHomePage(body: [
      const PerfilPage(),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const NavBar(),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailProduct(
                                model: Produto.n(
                                    'Macaxeira manteiguinha',
                                    50,
                                    'Saco 18kg 200 unidades',
                                    'https://portalamazonia.com/images/p/34083/b2ap3_medium_iStock-696334038.jpeg',
                                    Usuario.n('Seu Joaquim', 'Picui-PB',
                                        '15/02/24')))));
                  },
                  child: const Post(),
                ),
                const SizedBox(height: 30),
                const Post(),
              ],
            ),
          ),
        ],
      ),
      const NegociacoesPage()
    ]);
  }
}
