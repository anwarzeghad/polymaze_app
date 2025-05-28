import 'package:flutter/material.dart';

class SemiPage extends StatelessWidget {
  const SemiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phase de Groupe')),
      body: const Center(child: Text('Contenu de la phase de groupe')),
    );
  }
}
