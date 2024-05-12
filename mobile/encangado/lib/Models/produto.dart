import 'package:encangado/Models/usuario.dart';

class Produto {
  String nome = '';
  double preco = 0;
  String descricao = '';
  String urlimg = '';
  Usuario usuario = Usuario();

  Produto();
  Produto.n(this.nome, this.preco, this.descricao, this.urlimg, this.usuario);
}
