import 'package:flutter/material.dart';

void main() {
  runApp(const MonitoramentoApp());
}

class MonitoramentoApp extends StatelessWidget {
  const MonitoramentoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitoramento Sensores',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Monitoramento de Sensores')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.sensors, size: 72),
            SizedBox(height: 16),
            Text('Aplicativo inicial do projeto'),
          ],
        ),
      ),
    );
  }
}
