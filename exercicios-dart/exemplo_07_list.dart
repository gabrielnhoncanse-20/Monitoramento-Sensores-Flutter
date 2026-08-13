void main() {
  Set<String> rodovias = {'SP-280', 'BR-116', 'SP-330'};
  rodovias.add('SP-280');
  rodovias.add('BR-101');
  print('Conjunto final de rodovias: $rodovias');
  print('BR-116 está no conjunto? ${rodovias.contains('BR-116')}');
  print('Quantidade de rodovias únicas: ${rodovias.length}');
}
