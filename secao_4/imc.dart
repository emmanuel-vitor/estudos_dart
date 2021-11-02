import 'dart:io';

main() {
  calculoIMC();
}

/*Função sem parametro: Feita fora do escopo principal,
mas pode ser chamada dentro main. */
calculoIMC() {
  print("*** Digite se peso em KG ***");
  var entradaPeso = stdin.readLineSync();
  double peso = double.parse(entradaPeso!);

  print(" ");

  print("*** Digite sua altura em cm ***");
  var entradaAltura = stdin.readLineSync();
  double altura = double.parse(entradaAltura!);

  double imc = calculoImc(peso,
      altura); /*atribui a variavel o valor da função que faz o 
  calculo aritmetico, passando como parametro o valor*/

  verificarIMC(imc);
}

/*Função com retorno: 
recebe a função e o tipo de retono, então retorna a expressão que desejada.*/
double calculoImc(double peso, double altura) {
  return (peso / (altura * altura));
}

/*função com parametro: aqui faz um trecho de codigo onde
passa o valor de um escopo, como parametro pra ser usado 
no escopo de outra função;

imprime o resultado baseado no imc passado por parâmetro*/
verificarIMC(imc) {
  print("************************");
  print(imc);
  if (imc <= 18.5) {
    print("Magreza Extrema");
  } else if (imc >= 18.5 && imc < 24.9) {
    print("peso normal");
  } else if (imc >= 30 && imc < 34.9) {
    print("sobrepeso");
  } else if (imc >= 35 && imc < 39.9) {
    print("obesidade");
  } else {
    print("obesidade Mórbida;");
  }
}
