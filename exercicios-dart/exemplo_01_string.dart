void main() {
  String codigoArea = 'SP280-KM120';
  String rodovia = 'SP-280';
  String localizacao = 'Sorocaba / SP';
  String sensorId = 'SENSOR-01';
  print(
      'Ficha do monitoramento: Área = $codigoArea | Rodovia = $rodovia | Localização = $localizacao | Sensor = $sensorId');

  print('Código da área em maiúsculas: ${codigoArea.toUpperCase()}');

  print('Quantidade de caracteres do sensorId: ${sensorId.length}');

  print('A rodovia contém "-"? ${rodovia.contains('-')}');
}
