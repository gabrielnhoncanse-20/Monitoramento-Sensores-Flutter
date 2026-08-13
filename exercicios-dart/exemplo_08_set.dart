void main() {
  Map<String, dynamic> medicao = {
    'id': 101,
    'areaCodigo': 'SP-280',
    'alturaVegetacao': 1.85,
    'densidade': 0.72,
    'temperatura': 28.4,
    'umidade': 62.0,
    'sensorId': null,
  };

  print('Código da área: ${medicao['areaCodigo']}');
  print('Densidade: ${medicao['densidade']}');
  print('Temperatura: ${medicao['temperatura']}');

  medicao['sensorId'] = 'SENSOR-07';

  medicao['densidade'] = 0.81;

  medicao.forEach((chave, valor) {
    print('$chave => $valor');
  });
}
