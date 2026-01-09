void main() {

  // 1 - VARIÁVEIS
  // Variáveis armazenam valores na memória para uso posterior

  String variavelNome = "Pedro"; // Texto
  int valorVariavel = 10;        // Número inteiro
  bool ehVerdadeiro = true;      // Verdadeiro ou falso

  print(variavelNome);
  print(valorVariavel);
  print(ehVerdadeiro);

  // List é uma coleção de valores do mesmo tipo
  List<String> listaDePalavras = ["Pedro", "Laura"];
  print('${listaDePalavras[0]} - ${listaDePalavras[1]}');

  // 2 - NULL SAFETY
  // Em Dart, variáveis não podem ser nulas por padrão

  String? nome; 
  // O ? permite que a variável aceite null
  nome = "ABC";
  print(nome);
  nome = null;

  late String sobrenome;
  // late indica que a variável será inicializada depois
  sobrenome = "Pedro";
  print(sobrenome);
  // sobrenome = null; // Erro, pois não aceita null

  // 3 - IF e SWITCH
  // IF executa um bloco se a condição for verdadeira

  bool seguir = true;
  if (seguir) {
    print("Andar");
  } else {
    print("Parar");
  }

  // Comparações retornam true ou false
  if (10 > 5) {
    print("10 é maior que 5");
  } else {
    print("10 não é maior que 5");
  }

  // SWITCH é usado quando há várias opções fixas
  int valorInt = 5;
  switch (valorInt) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    default:
      print("Padrão");
  }

  // 4 - ESTRUTURAS DE REPETIÇÃO
  // FOR é usado quando se sabe quantas vezes irá repetir

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // WHILE repete enquanto a condição for verdadeira
  int contador = 10;
  while (contador != 1) {
    contador--;
    print('Loop -> $contador');
  }

  // 5 - CLASSES, MÉTODOS E ATRIBUTOS
  // Classes representam objetos do mundo real

  Celular celularPedro = Celular('Azul', 5, 5.2, 200);
  Celular celularLaura = Celular('Branco', 10, 5.7, 400);

  print(celularPedro);
  print(celularLaura);

  // Método calcula um valor com base em lógica interna
  double resultado = celularPedro.valorCelular(1000);
  print(resultado);

  // 6 - PROGRAMAÇÃO ORIENTADA A OBJETOS (POO)
  // Objetos são instâncias de classes

  Carro mercedes = Carro("Mercedes");
  Carro volkswagen = Carro("Volkswagen");

  print(mercedes.marca);
  print(volkswagen.marca);

  // 7 - HERANÇA, POLIMORFISMO E ABSTRAÇÃO

  // Herança: Deivid herda métodos da classe Pai
  Deivid deivid = Deivid();
  print(deivid.falar());

  // Polimorfismo: classes diferentes respondem ao mesmo método
  Pessoa pessoa1 = Pessoa01();
  Pessoa pessoa2 = Pessoa02();

  print(pessoa1.comunicar());
  print(pessoa2.comunicar());
}

// ================= CLASSES =================

// Abstração
// Classe abstrata define um contrato
abstract class Pessoa {
  String comunicar();
}

// Implementação da abstração
class Pessoa01 implements Pessoa {
  @override
  String comunicar() {
    return "Olá mundo";
  }
}

// Outra implementação com comportamento diferente
class Pessoa02 implements Pessoa {
  @override
  String comunicar() {
    return "Bom dia";
  }
}

// Encapsulamento
// Atributos privados começam com _
class Carro {
  final String marca;
  int _valor = 1000;

  int get valorCarro => _valor;
  void setValue(int valor) => _valor = valor;

  Carro(this.marca);
}

class Celular {
  final String cor;
  final int qtdeProcessadores;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdeProcessadores, this.tamanho, this.peso);

  @override
  String toString() {
    return "Cor $cor, Processadores $qtdeProcessadores, Tamanho $tamanho, Peso $peso";
  }

  double valorCelular(double valor) {
    return valor * qtdeProcessadores;
  }
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print('Pagando com Boleto');
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print('Pagando com pix');
  }
}

// Classe base
class Pai {
  String falar() {
    return 'glórias';
  }
}

// Classe filha
class Deivid extends Pai {}
