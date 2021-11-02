main() {
  /* 
   Tipagem de uma map segue sintaxe semelhante a lista
  O tipo é passado dentro das GENERICS (<>), onde o 
   valor das chaves (KEY) é STRING, e do valor é do tipo
   DYNAMIC, já que posse ser de qualquer tipagem, é um valor
  literalmente dinamico
  */
  Map<String, dynamic> maps = {
    "nome": "Emmanuel Vitor",
    "idade": 22,
    'objetivo': 'Desenvolvimento mobile'
  };

  print(maps["nome"]);
  maps["nome"] = "Lucas";
  print("Novo map: ${maps["nome"]}");
}
