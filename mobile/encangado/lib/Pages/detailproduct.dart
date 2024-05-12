import 'package:encangado/Models/produto.dart';
import 'package:encangado/Pages/home/components/app.button.dart';
import 'package:encangado/shared/app.Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailProduct extends StatefulWidget {
  Produto model;
  DetailProduct({super.key, required this.model});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 111, 67, 1),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
        //title: const Text('PRODUTO DETALHE'),
        title: Text(widget.model.nome),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Image.network(
                widget.model.urlimg,
              ),
              const SizedBox(width: 5),
              Image.network(
                widget.model.urlimg,
              ),
            ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.465,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'R\$ ${widget.model.preco.toString()}/saco 18kg',
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //Text(model.nome,
                  //    style: const TextStyle(
                  //        fontSize: 22, fontWeight: FontWeight.normal)),
                  const Divider(color: Colors.grey),
                  Text('Descrição', style: mark01()),

                  Text(
                    //'Aprox. 80 unidades e valor Unitário: R\$ 1,06 ',
                    widget.model.descricao,
                    style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  //const SizedBox(height: 10),
                  const Divider(color: Colors.grey),
                  Text('Localização', style: mark01()),
                  Text(
                    widget.model.usuario.cidade,
                    style: const TextStyle(fontSize: 17),
                  ),
                  Text(
                    'A localização mais próxima',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                  ),

                  const Divider(color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sobre o vendedor', style: mark01()),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Detalhes do vendedor',
                              style: TextStyle())),
                    ],
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(widget.model.usuario.imgUrl),
                    ),
                    title: Text(
                      widget.model.usuario.nome,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Desde ${widget.model.usuario.date}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                    ),
                  ),
                  const Divider(color: Colors.grey),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.10,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadiusDirectional.only(
                    topEnd: Radius.elliptical(20, 20),
                    topStart: Radius.elliptical(20, 20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonApp(
                  text: 'Enviar Proposta',
                  color: Colors.orange,
                  icon: const Icon(color: Colors.white, Icons.chat),
                  onPressed: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (_) {
                          return const ContraPropostaAlertDialog();
                        });
                  },
                ),
                const SizedBox(width: 10),
                ButtonApp(
                  text: 'Comprar agora',
                  color: Colors.blueAccent,
                  icon: const Icon(
                      color: Colors.white, Icons.shopping_bag_outlined),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle mark01() =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.w700);
}

// ignore: must_be_immutable

class ContraPropostaAlertDialog extends StatelessWidget {
  const ContraPropostaAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: const Text('Fazer uma proposta'),
      content: Wrap(
        children: [
          const PropostaCard(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 120,
              height: 60,
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Quantidade',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white)),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 120,
              height: 60,
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Valor',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white)),
            ),
          ]),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Cancelar',
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Enviar Contra Proposta',
          ),
        )
      ],
    );
  }
}

class PropostaCard extends StatelessWidget {
  const PropostaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        SizedBox(width: 20),
        Text('Macaxeira manteiguinha',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        Divider(color: Colors.black),
        ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://portalamazonia.com/images/p/34083/b2ap3_medium_iStock-696334038.jpeg'),
            ),
            title: Text(
              'Propostas',
              style: TextStyle(color: Colors.blue, fontSize: 19),
            ),
            subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('R\$ 49,00/saco 18kg'),
                  Text('30 unidades'),
                ])),
        Divider(color: Colors.black),
      ],
    );
  }
}
