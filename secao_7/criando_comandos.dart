import 'dart:io';

// objeto(MAP) criado vazio,
Map<String, dynamic> cadastro = {};
main() {
  bool condicao = true;

  while (condicao) {
    print("DIgite uma opção");
    String? opcao = stdin.readLineSync();
    if (condicao == "sair") {
      condicao = false;
      print("programa finalizado");
    } else if (opcao == "cadastrar") {
      cadastroPessoa();
    } else if (opcao == "imprimir") {
      print(cadastro);
    } else {
      print("comando digitado é invalido:");
    }
  }
}

cadastroPessoa() {
  print("=== Digite seu nome: ===");
// adicionando em tempo de execução, ja que pode ser criado o objeto inicialmente vazio
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite sua idade: ===");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite sua cidade: ===");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite seu estado: ===");
  cadastro["estado"] = stdin.readLineSync();
}
