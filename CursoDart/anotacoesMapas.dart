void main() {

  // LIST
  // List é uma coleção ordenada de valores do mesmo tipo
  List<String> lista = ['Deivid', 'Willyan'];

  // MAP
  // Map trabalha com pares chave : valor
  Map<String, String> mapa = {'chave': 'valor'};

  // Acessando um valor pela chave
  print(mapa['chave']);

  // putIfAbsent
  // Só adiciona a chave se ela ainda NÃO existir
  mapa.putIfAbsent('novaChave', () => 'novoValor');
  print(mapa);

  // Adicionando valor diretamente pela chave
  mapa['novaChaveDois'] = 'novoValorDois';
  print(mapa);

  // remove
  // Remove um item pela chave
  mapa.remove('chave');
  print(mapa);

  // Atualizando o valor de uma chave existente
  mapa['novaChaveDois'] = 'atualizado';
  print(mapa);

  // update
  // Atualiza o valor usando uma função
  mapa.update('novaChaveDois', (value) => 'atualizando2');
  print(mapa);

  // forEach
  // Percorre todas as chaves e valores do Map
  mapa.forEach((chave, valor) {
    print('a chave eh: $chave, o valor eh: $valor');
  });

  // Percorrendo apenas as chaves
  mapa.keys.forEach(print);

  // Percorrendo apenas os valores
  mapa.values.forEach(print);
}
