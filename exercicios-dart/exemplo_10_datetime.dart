enum StatusVegetacao { normal, atencao, urgente }

class AreaMonitoramento {
  final int id;
  final String codigo;
  final String rodovia;
  final double densidade;
  final bool areaAtiva;
  final String? observacao;
  StatusVegetacao status;

  AreaMonitoramento({
    required this.id,
    required this.codigo,
    required this.rodovia,
    required this.densidade,
    required this.areaAtiva,
    this.observacao,
    required this.status,
  });
}

void main() {
  String nomeSistema = 'VerdeSmart';
  int totalAreas = 2;
  bool sistemaOnline = true;
  num leituraSensor = 41;
  String? observacaoGeral = null;

  List<AreaMonitoramento> areas = [
    AreaMonitoramento(
      id: 1,
      codigo: 'SP280-KM120',
      rodovia: 'SP-280',
      densidade: 0.68,
      areaAtiva: true,
      observacao: 'Vegetação em crescimento moderado.',
      status: StatusVegetacao.normal,
    ),
    AreaMonitoramento(
      id: 2,
      codigo: 'BR116-KM45',
      rodovia: 'BR-116',
      densidade: 0.92,
      areaAtiva: true,
      observacao: null,
      status: StatusVegetacao.atencao,
    ),
  ];

  Set<String> rodoviasUnicas = {'SP-280', 'BR-116'};
  Set<String> sensores = {'SENSOR-01', 'SENSOR-03'};

  Map<String, dynamic> resumoMedicao = {
    'codigo': 'BR116-KM45',
    'densidade': 0.92,
    'temperatura': 29.5,
    'umidade': 61.0,
    'sensorId': 'SENSOR-03',
  };

  ({String codigo, double densidade}) resumoRapido = (
    codigo: 'SP280-KM120',
    densidade: 0.68,
  );

  DateTime dataColeta = DateTime(2026, 8, 13, 14, 30);

  print('=== Relatório VerdeSmart ===');
  print('Sistema: $nomeSistema');
  print('Total de áreas: ${areas.length}');

  double densidadeMedia =
      areas.fold(0.0, (sum, area) => sum + area.densidade) / areas.length;
  print('Média de densidade: ${densidadeMedia.toStringAsFixed(2)}');

  print('Status das áreas:');
  for (AreaMonitoramento area in areas) {
    print('- Área ${area.codigo}: ${area.status.name}');
  }

  print('Rodovias únicas: $rodoviasUnicas');
  print('Sensores únicos: $sensores');
  print('Resumo da medição: $resumoMedicao');
  print('Resumo rápido: ${resumoRapido.codigo} - ${resumoRapido.densidade}');
  print('Observação: ${observacaoGeral ?? 'não informado'}');
  print('Leitura do sensor: $leituraSensor');

  if (sistemaOnline) {
    print('Sistema online: $sistemaOnline');
  }

  print(
      'Data da coleta: ${dataColeta.day}/${dataColeta.month}/${dataColeta.year}');

  areas[1].status = StatusVegetacao.urgente;
  print(
      'Nova medição recebida: área ${areas[1].codigo} agora está ${areas[1].status.name}.');

  DateTime proximaInspecao = dataColeta.add(const Duration(days: 7));
  print(
      'Próxima inspeção: ${proximaInspecao.day}/${proximaInspecao.month}/${proximaInspecao.year}');
}