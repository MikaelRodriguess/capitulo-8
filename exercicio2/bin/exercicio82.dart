import 'dart:io';

void main() {
  Media resultadoMedia = Media();
  print('Digite as três notas que você deseja registrar:');
  resultadoMedia.nota1 = double.parse(stdin.readLineSync()!);
  resultadoMedia.nota2 = double.parse(stdin.readLineSync()!);
  resultadoMedia.nota3 = double.parse(stdin.readLineSync()!);
  resultadoMedia.calculo();
}


class Media{

  double nota1 = 0;
  double nota2 = 0;
  double nota3 = 0;
  double media = 0;
  double notaRecupeacao = 0;
  double? mediaFinal;

  void calculo() {
    double media = ((nota1*2 + nota2*3 + nota3*5) / 10);
    if (media >= 6) {
      print('Aluno aprovado.');
    } else if (media < 4) {
      print('Aluno reprovado.');
    } else if (media > 4 && media < 6) {
      print('Aluno em recuperação, digite a nota de recuperação: ');
      double notaRecuperacao = double.parse(stdin.readLineSync()!);
      mediaFinal = (media + notaRecuperacao) / 2;
      print('A média final é $mediaFinal');
    } if (mediaFinal! >= 5.5) {
      print('O aluno foi aprovado.');
    } else {
      print('O aluno foi reprovado.');
    }
  }
}