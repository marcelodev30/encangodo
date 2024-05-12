import 'package:encangado/Pages/add_produtos/add_produtos.page.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 70,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://picsum.photos/100/100'),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Usuário 01',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 20,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
              title: const Text('Adicionar produto'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddProdutosPage()));
              }),
          const ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
                child: Icon(
                  Icons.post_add_rounded,
                  color: Colors.white,
                )),
            title: Text('Meus Produtos'),
          )
        ],
      ),
    );
  }
}
