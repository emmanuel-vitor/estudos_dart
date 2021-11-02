main() {
  /*
  *While é um função, tem o proprio escopo, e executa enquanto a condição é verdadeira. */

  bool condicao = true;
  int count = 0;

  while (condicao) {

    print("passagem $count");
    if (count > 9) {
      condicao = false;
    }
    count++;
  }
}
