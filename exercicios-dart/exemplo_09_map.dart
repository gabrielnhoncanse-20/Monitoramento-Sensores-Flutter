enum StatusVegetacao { normal, atencao, urgente }

void main() {
 
  DateTime coleta = DateTime(2026, 8, 13);
 
  ({String codigo, String rodovia, double densidade}) areaDados = (
    codigo: 'SP280-KM120',
    rodovia: 'SP-280',
    densidade: 0.82,
  );

  print('Data da coleta: ${coleta.day}/${coleta.month}/${coleta.year}');

  StatusVegetacao statusAtual = StatusVegetacao.atencao;
  print('Status atual: $statusAtual');
  print(
      'Dados da área: ${areaDados.codigo} | ${areaDados.rodovia} | ${areaDados.densidade}');

  statusAtual = StatusVegetacao.urgente;
  print('Status atualizado: $statusAtual');

  DateTime proximaInspecao = coleta.add(const Duration(days: 7));
  print(
      'Próxima inspeção: ${proximaInspecao.day}/${proximaInspecao.month}/${proximaInspecao.year}');
}
