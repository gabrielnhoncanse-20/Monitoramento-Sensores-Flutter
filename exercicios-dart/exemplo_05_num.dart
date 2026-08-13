void main() {
  num leitura = 42;
  print('Leitura inteira: $leitura');

  leitura = 42.7;
  print('Leitura decimal: $leitura');

  String? observacoes;

  double? inclinacaoTerreno = 12.5;
  print('Observações: ${observacoes ?? 'não informado'}');

  if (inclinacaoTerreno != null) {
    print('Inclinação do terreno: ${inclinacaoTerreno.toStringAsFixed(2)}°');
  }
}
