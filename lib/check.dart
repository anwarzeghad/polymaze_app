import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

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
                        'Homologation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Barre de recherche
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 14),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: SvgPicture.asset(
                            'assets/images/search.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(color: Color.fromARGB(255, 236, 234, 234)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Corps de la page
          const Expanded(
            child: Center(
              child: Text(
                'Contenu de la phase de check',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
