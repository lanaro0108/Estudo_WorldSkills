// Exercícios de Listas

void main() {
  // Crie uma lista com 4 nomes e imprima todos com for
  List<String> listaNomes = ["Pedro", "Laura", "Miguel", "Lucas"];
  for (int i = 0; i < listaNomes.length; i++) {
    print(listaNomes[i]);
  }
  //Adicione um nome à lista.
  listaNomes.add("João");
  print(listaNomes);

  // Remova um nome da lista.
  listaNomes.removeAt(3);
  print(listaNomes);

  // Mostre o tamanho da lista.
  print("Tamanho da lista: ${listaNomes.length}");
}
