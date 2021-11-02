import 'dart:io';

main() {
  List<String> produtos = [];
  var nomeDoProduto;
  while (nomeDoProduto != "f") {
    //escopo geral do while,
    print("Digite o nome do produto:");
    nomeDoProduto = stdin.readLineSync();
    if (nomeDoProduto == "f") {
      // escopo do if e else
      print("Finalizado");
      print(produtos);
    } else if (nomeDoProduto == "v") {
      //escopo do ese if, para visualizar os produtos ja adicionados a lista
      print("========Seu Carrinho já contem ==========");
      imprimirLista(produtos);
    } else if (nomeDoProduto == "r") {
      remover(produtos);
    } else {
      produtos.add(nomeDoProduto);
    }
  }
  print(produtos);
}

imprimirLista(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("$i -> ${produtos[i]}");
  }
}

remover(produtos) {
  // solução para remover atraves do indice
  print("digite o numero do produto que deseja remover;");
  var item = stdin.readLineSync();
  int itemNum = int.parse(item!);
  produtos.removeAt(itemNum);
  print("========Seu Carrinho já contem ==========");
  imprimirLista(produtos);
  /* remoção pelo nome: 
        print("$i -> ${produtos[i]}");
       produtos.remove(nomeDoProduto);*/
}
