main(List<String> args) {
  var roupa1 = Roupa(cor: 'vermelha', tamanho: 44, marca: 'lacoste');
  print(roupa1.toString());
}

class Roupa {
  final String? cor;
  final int? tamanho;
  final String? marca;

  Roupa({this.cor, this.tamanho, this.marca});

  // String toString() {
  //   return 'cor $cor, tamanho $tamanho, marca $marca';
  // }
}
