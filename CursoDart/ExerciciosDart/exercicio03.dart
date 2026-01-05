// Exercício de Condicionais

import 'dart:io';

// Crie um programa que verifique se um número é par ou ímpar
void main() {
  print("Digite um número: ");
  String? entrada = stdin.readLineSync();
  int numero = int.parse(entrada!);
  if (numero % 2 == 0) {
    print("É um número par");
  } else {
    print("É um número ímpar");
  }

  // Verifique se uma pessoa é maior de idade (>= 18)
  int num1 = 18;
  if (num1 >= 18) {
    print("É maior de idade");
  } else {
    print("É menor de idade");
  }

  // Cálculo de nota
  print("Insira sua nota:");
  String? nota = stdin.readLineSync();
  int notaInt = int.parse(nota!);
  if (notaInt >= 7) {
    print("Aprovado");
  } else if (notaInt < 7 && notaInt >= 5) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }
}
