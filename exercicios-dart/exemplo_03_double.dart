void main() {
  double densidade1 = 0.78;
  double densidade2 = 0.91;
  double densidade3 = 0.84;
  double temperatura = 28.4;
  double umidade = 62.0;

  double somaDensidades = densidade1 + densidade2 + densidade3;
  print('Soma das densidades: ${somaDensidades.toStringAsFixed(2)}');

  double mediaDensidades = somaDensidades / 3;
  print('Média das densidades: ${mediaDensidades.toStringAsFixed(2)}');

  double maiorDensidade = densidade1;
  if (densidade2 > maiorDensidade) maiorDensidade = densidade2;
  if (densidade3 > maiorDensidade) maiorDensidade = densidade3;

  if (maiorDensidade >= 0.90) {
    print('Aviso de urgência: densidade crítica!');
  } else {
    print('Densidade dentro do limite normal.');
  }

  print('Temperatura: ${temperatura.toStringAsFixed(1)} °C');
  print('Umidade: ${umidade.toStringAsFixed(1)} %');
  print('Densidade 1: ${densidade1.toStringAsFixed(2)}');
  print('Densidade 2: ${densidade2.toStringAsFixed(2)}');
  print('Densidade 3: ${densidade3.toStringAsFixed(2)}');
}
