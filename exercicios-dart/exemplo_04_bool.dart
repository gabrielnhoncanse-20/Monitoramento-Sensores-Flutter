void main() {
  bool areaAtiva = true;
  bool coletaHabilitada = true;
  bool sensorOnline = false;
  bool intervencaoNecessaria = true;

  print('Área ativa? $areaAtiva');
  print('Coleta habilitada? $coletaHabilitada');
  print('Sensor online? $sensorOnline');
  print('Intervenção necessária? $intervencaoNecessaria');

  if (areaAtiva && sensorOnline && coletaHabilitada) {
    print('Simulação de coleta permitida.');
  } else {
    print('Simulação de coleta bloqueada.');
  }

  if (!sensorOnline) {
    print('Aviso: IoT offline.');
  }

  if (intervencaoNecessaria) {
    print('Equipe deve ser acionada');
  }
}
