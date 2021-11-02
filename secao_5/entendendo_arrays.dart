main() {
  //declaracao e criação de um arrya, instanciado.
  var array = ["teste1", "teste2", "teste3"];

  //existem algumas funções /metodos que são utilizados
  // atraves do .NOME_DA_FUNÇÂO

  //.length retorna o tamanho do array, ou quantos itens existem dentro do array
  print(array.length);

  // adiciona um item ao array
  array.add("value");
  print(array);

//Acessando o item da lista: é feito atraves do seu indice, passado como
// parametro dentro dos colchetes. lembrando que o arrya inicia com indice 0;
// então seus intices são sempre posição-1;
  print(array[1]);

  //removendo itens: pela  posição do item que deseja remover
  array.removeAt(3);
  print(array);
  // removendo o item
  array.remove("teste3");
  print(array);
}
