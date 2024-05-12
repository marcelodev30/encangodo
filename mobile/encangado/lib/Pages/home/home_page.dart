import 'package:encangado/Models/produto.dart';
import 'package:encangado/Models/usuario.dart';
import 'package:encangado/Pages/detailproduct.dart';
import 'package:encangado/shared/app.imgs.dart';
import 'package:encangado/shared/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(30, 30),
                  bottomRight: Radius.elliptical(30, 30)),
              color: Color.fromRGBO(78, 111, 67, 1),
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Wrap(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.logo,
                          width: 100,
                          height: 40,
                        ),
                        Expanded(child: Container()),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(127, 164, 101, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.notifications,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(127, 164, 101, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://picsum.photos/30/30'),
                          radius: 25,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 280,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Search items..',
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.search),
                                    ),
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(Icons.filter),
                                    ),
                                    border: outlineInputBorder),
                              )),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
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
        ],
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none);
