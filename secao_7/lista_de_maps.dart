import 'dart:io';

// Array de MAP
List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;

  while (condicao) {
    print("DIgite uma opção");
    String? opcao = stdin.readLineSync();
    if (opcao == "sair") {
      condicao = false;
      print("programa finalizado");
    } else if (opcao == "cadastrar") {
      cadastroPessoa();
    } else if (opcao == "imprimir") {
      // vai mostrar a lista de cadastros criado, estes serão adicionados no array,
      // todo map agora é um item de um array, e cada map contem as chaves e valores proprias
      print(cadastros);
    } else {
      print("comando digitado é invalido:");
    }
  }
}

cadastroPessoa() {
  // nesse caso não precisa ser de escopo global, ja que só sea usada somente nessa função
  Map<String, dynamic> cadastro = {};
  print("=== Digite seu nome: ===");
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite sua idade: ===");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite sua cidade: ===");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite seu estado: ===");
  cadastro["estado"] = stdin.readLineSync();
  
  //adicionando esse item ao array
  cadastros.add(cadastro);
}
