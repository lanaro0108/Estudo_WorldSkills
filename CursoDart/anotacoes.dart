void main() {

  // 1 - Introdução a Variáveis

  String variavelNome = "Pedro";
  print(variavelNome);

  int valorVariavel = 10;
  print(valorVariavel);

  bool ehVerdadeiro = true;
  print(ehVerdadeiro);

  List<String> listaDePalavras = ["Pedro", "Laura"];
  print('${listaDePalavras[0]} - ${listaDePalavras[1]}');

  // 2 - Introdução null-safety
    // garante que variáveis não sejam nulas por padrão
  // Mutável
  String? nome;
  nome = "ABC";
  print(nome);
  nome = null;

  // Imutável
  late String sobrenome;
  sobrenome = "Pedro";
  print(sobrenome);
  // sobrenome = null;  <-- vai dar erro

  // 3 - IF e SWITCH
  bool seguir = true;
  if (seguir) {
    print("Andar");
  } else {
  print("Parar");
  }
  
  if (10 > 5) {
    print("10 é maior que 5");
  } else {
  print("10 não é maior que 5");
  }
  
  int valorInt = 5; 
  switch(valorInt) {
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
  
  // 4 - Estruturas de repetição
  for(int i = 1; i <= 10; i++) {
    print(i);
  }
  
  int contador = 10;
  while(contador !=1) {
    contador--;
    print('Loop -> $contador');
  }
  
  // 5 - Classes, Métodos e Atributos
    // Classes - tudo oq representa um objeto na vida real, ex: celular
    // Métodos - pedaços de códigos que executam uma métric encapsulada
  Celular celularPedro = Celular('Azul', 5, 5.2, 200);
  Celular celularLaura = Celular('Branco', 10, 5.7, 400);
  
  print(celularPedro.toString());
  print(celularLaura.toString());
  double resultado = celularPedro.valorCelular(1000);
  print(resultado);
}

  // 6 - POO
class Carro {
  final String modelo;
  Carro(this.modelo);
}

class Celular {
 final String cor;
 final int qtdeProcessadores;
 final double tamanho;
 final double peso;
 
 // Classe 
 Celular(this.cor, this.qtdeProcessadores, this.tamanho, this.peso);
 
 // Método
 String toString() {
  return "Cor $cor, Qtde de processadores $qtdeProcessadores, Tamanho $tamanho, Peso $peso,";
 }
 
 double valorCelular(double valor) {
   return valor * qtdeProcessadores;
 }
}

  // 7 - Orientação a objetos
  // 8 - Herança, Polimorfismo e Abstração
