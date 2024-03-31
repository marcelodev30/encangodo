import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(78, 111, 67, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(40, 40),
            bottomRight: Radius.elliptical(40, 40),
          )),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: Wrap(
            children: [
              Row(
                children: [
                  Container(
                    width: 260,
                    height: 72,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Pesquisar..',
                          suffixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 31,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(178, 178, 178, 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(202, 195, 88, 1),
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      children: [
                        Image.asset(
                          'img/moeda.png',
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '12',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 37,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
