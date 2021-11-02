main() {
  var maps = {
    "nome": "Emmanuel Vitor",
    "idade": 22,
    'objetivo': 'Desenvolvimento mobile'
  };

  print(maps["nome"]);

  maps["nome"] = "Lucas";
  print("Novo map: ${maps["nome"]}");
}
