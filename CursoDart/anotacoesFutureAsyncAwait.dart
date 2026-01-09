void main() async {

  // FUTURE, ASYNC E AWAIT
  // Future representa um valor que ainda vai existir no futuro
  // async permite usar await dentro da função
  // await faz o código esperar o resultado da Future

  String nome = 'Deivid';

  // A função retorna um Future<String>, não uma String direta
  Future<String> cepFuture = getCepByName('Rua JK');

  late String cep;

  // Forma antiga de tratar Future (com then)
  // cepFuture.then((result) => cep = result);

  // await pausa a execução até o Future ser resolvido
  cep = await cepFuture;

  print(cep);
}

// SERVIÇO EXTERNO (SIMULADO)
// Funções async normalmente acessam APIs, banco ou arquivos
Future<String> getCepByName(String name) {

  // Simula uma requisição externa
  // Future.value retorna um valor como se viesse no futuro
  return Future.value('86838000');
}
