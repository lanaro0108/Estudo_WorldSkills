// Exercício de Entrada e Saída

import 'dart:io';

// Crie um programa que peça um número e mostre o dobro desse número
void main() {
  print("Digite um número:");
  // Ler a entrada do usuário
  String? entrada = stdin.readLineSync();
  // Converter a entrada para inteiro, evita q seja nulo
  int numero = int.parse(entrada!);
  int dobro = numero * 2;
  print("O dobro de $numero é $dobro");
}
