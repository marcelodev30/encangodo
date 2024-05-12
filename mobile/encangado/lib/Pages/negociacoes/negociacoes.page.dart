import 'package:flutter/material.dart';

class NegociacoesPage extends StatefulWidget {
  const NegociacoesPage({super.key});

  @override
  State<NegociacoesPage> createState() => _NegociacoesPageState();
}

class _NegociacoesPageState extends State<NegociacoesPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Negociações:',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        CardNegociacoes()
      ],
    );
  }
}

class CardNegociacoes extends StatelessWidget {
  const CardNegociacoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: const ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://portalamazonia.com/images/p/34083/b2ap3_medium_iStock-696334038.jpeg'),
        ),
        title: Text(
          'Macaxeira manteiginha',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('R\$ 49,00/saco 18kg'),
            Text('30 unidades'),
            Text(
              'Propostas',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'Iniciado em : 19/02/24 às 08:00h',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
