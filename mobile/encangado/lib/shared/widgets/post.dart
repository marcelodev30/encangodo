import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://picsum.photos/30/30'),
              ),
              const SizedBox(width: 10),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seu Joaquim',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Picui - PB',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color.fromRGBO(131, 131, 131, 1)),
                  ),
                ],
              ),
              Expanded(child: Container()),
              const Text('R\$ 49,99',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Color.fromRGBO(78, 111, 67, 1))),
              GestureDetector(
                  onTap: () {}, child: const Icon(Icons.more_vert, size: 27))
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '10kg de Macaxeira',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 8),
          Image.network(
            'https://portalamazonia.com/images/p/34083/b2ap3_medium_iStock-696334038.jpeg',
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.favorite_sharp, size: 30),
              const SizedBox(width: 10),
              const Icon(Icons.star_border, size: 30),
              const SizedBox(width: 10),
              const Icon(Icons.comment, size: 30),
              Expanded(child: Container()),
              const Text(
                'há 2 horas',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.share, size: 30),
            ],
          )
        ],
      ),
    );
  }
}
