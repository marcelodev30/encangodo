import 'package:encangado/shared/widgets/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
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
        title: const Text('Encangado'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Pesquisar..',
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(178, 178, 178, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const NavBar(),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: const [
                Post(),
                SizedBox(height: 30),
                Post(),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
