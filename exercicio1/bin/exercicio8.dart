import 'dart:io';

void main() {
  Imc resultadoImc = Imc();
  print('Digite o seu peso e posteriormente a sua altura:');
  resultadoImc.peso = double.parse(stdin.readLineSync()!);
  resultadoImc.altura = double.parse(stdin.readLineSync()!);
  resultadoImc.calculo();
}

class Imc{

  double peso = 0;
  double altura = 0;

  void calculo() {
    print(peso / (altura * altura));
  }
}