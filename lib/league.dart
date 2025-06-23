import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaguePage extends StatelessWidget {
  const LeaguePage({super.key});

  // Widget pour afficher un Rectangle1 avec un label par-dessus (comme fond)
  Widget buildLabeledRectangleBackground(String label) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SvgPicture.asset('assets/images/Rectangle1.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  // Un groupe "colonne" de 3 Rectangle1 avec labels + rectangle simple à droite
  Widget buildGroup() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildLabeledRectangleBackground("Finished:"),
            const SizedBox(height: 8),
            buildLabeledRectangleBackground("Minigames:"),
            const SizedBox(height: 8),
            buildLabeledRectangleBackground("Penalties:"),
          ],
        ),
        const SizedBox(width: 8),
        SvgPicture.asset('assets/images/Rectangle.svg'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // En-tête personnalisé avec icône, titre et barre de recherche
          SafeArea(
            child: Container(
              color: const Color.fromRGBO(254, 87, 4, 1),
              padding: const EdgeInsets.only(top: 28, bottom: 20, left: 21, right: 21),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          'assets/images/back.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Phase One - League',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),

          // Corps de la page : 4 groupes côte à côte
          Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(1),
                  child: Column(
                    children: [
                      buildGroup(),
                      const SizedBox(height: 20),
                      buildGroup(),
                      const SizedBox(height: 20),
                      buildGroup(),
                      const SizedBox(height: 20),
                      buildGroup(),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
