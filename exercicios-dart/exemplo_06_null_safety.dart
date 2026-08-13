void main() {
  List<String> status = ['NORMAL', 'ATENCAO', 'URGENTE'];
  List<double> densidades = [0.65, 0.72, 0.88, 0.94];

  for (String item in status) {
    if (item == 'NORMAL') {
      print('Status: $item - Sistema estável.');
    } else if (item == 'ATENCAO') {
      print('Status: $item - Verificar monitoramento.');
    } else if (item == 'URGENTE') {
      print('Status: $item - Acionar equipe imediata.');
    }
  }
  densidades.add(0.81);
  List<double> densidadesCriticas = densidades.where((d) => d >= 0.70).toList();
  print('Densidades >= 0.70: $densidadesCriticas');
  print('Quantidade total de densidades: ${densidades.length}');
}
