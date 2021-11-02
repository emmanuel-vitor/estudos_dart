import 'dart:io';

// Exemplo do carrinho d compea usando de variavel global
//podedndo ser usada em qualquer escopo
List<String> produtos = [];
main() {
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
      imprimirLista();
    } else if (nomeDoProduto == "r") {
      remover();
    } else {
      produtos.add(nomeDoProduto);
    }
  }
  print(produtos);
}

imprimirLista() {
  for (var i = 0; i < produtos.length; i++) {
    print("$i -> ${produtos[i]}");
  }
}

remover() {
  // solução para remover atraves do indice
  print("digite o numero do produto que deseja remover;");
  var item = stdin.readLineSync();
  int itemNum = int.parse(item!);
  produtos.removeAt(itemNum);
  print("========Seu Carrinho já contem ==========");
  imprimirLista();
  /* remoção pelo nome: 
        print("$i -> ${produtos[i]}");
       produtos.remove(nomeDoProduto);*/
}
