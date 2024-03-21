import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 720,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(78, 111, 67, 1),
          borderRadius: BorderRadius.circular(54)),
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: Wrap(
            children: [
              Row(
                children: [
                  const Text(
                    'Encangado',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: AutofillHints.gender),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(127, 164, 101, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(127, 164, 101, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.shopping_cart,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/30/30'),
                    radius: 25,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      height: 72,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Pesquisar..',
                            suffixIcon: const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 10),
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
                      height: 60,
                      width: 110,
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(202, 195, 88, 1),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        children: [
                          Image.asset(
                            'img/moeda.png',
                            height: 39,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '12',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 39,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
