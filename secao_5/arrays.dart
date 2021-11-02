import 'dart:io';

main() {
  var nome = [];
  bool condicaoTeste = true;

  while (condicaoTeste) {
    print("Digite um nome:");
    var texto = stdin.readLineSync();
    if (texto == "sair") {
      condicaoTeste = false;
      print("condição finalizada");
    } else {
      nome.add(texto);
    }
    print("$nome \n");
  }
}
