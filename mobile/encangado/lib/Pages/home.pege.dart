import 'package:encangado/shared/widgets/navbar.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NavBar(),
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
