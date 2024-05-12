import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:encangado/shared/app.imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DesignHomePage extends StatefulWidget {
  final List<Widget> body;
  const DesignHomePage({super.key, required this.body});

  @override
  State<DesignHomePage> createState() => _DesignHomePageState();
}

class _DesignHomePageState extends State<DesignHomePage>
    with TickerProviderStateMixin {
  late TabController tabPageController;

  @override
  void initState() {
    super.initState();
    tabPageController = TabController(length: 3, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
        foregroundColor: Colors.white,
        actions: [
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
            backgroundImage: NetworkImage('https://picsum.photos/30/30'),
            radius: 25,
          ),
          const SizedBox(width: 10)
        ],
        title: SvgPicture.asset(
          AppImages.logo,
          width: 100,
          height: 40,
        ),
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 7, left: 25),
                  width: 280,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search items..',
                        suffixIcon: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                  )),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'img/moeda.png',
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Ec\$ 250',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabPageController,
        children: widget.body,
      ),
      bottomNavigationBar: ConvexAppBar(
          controller: tabPageController,
          backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
          color: Colors.white,
          items: const [
            TabItem(icon: Icons.people, title: 'Perfil'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.message, title: 'Propostas'),
          ],
          onTap: (int i) => tabPageController.index = i),
    );
  }
}
