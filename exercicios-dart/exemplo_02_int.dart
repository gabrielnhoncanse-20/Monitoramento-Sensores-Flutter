void main() {
  int idArea = 5;
  int idMedicao = 10;
  int alertasAbertos = 3;
  int sensoresAtivos = 4;

  int soma = idArea + idMedicao;
  print('Soma de idArea + idMedicao: $soma');

  int proximoIdMedicao = idMedicao + 1;
  print('Próximo ID de medição: $proximoIdMedicao');

  if (alertasAbertos >= 3) {
    print('Operação crítica');
  } else {
    print('Operação estável');
  }

  // 4. O dobro de sensoresAtivos.
  int dobroSensores = sensoresAtivos * 2;
  print('Dobro de sensoresAtivos: $dobroSensores');
}
