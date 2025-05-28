import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'nav.dart';
import 'cdc.dart';
import 'phases.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onNavTap(int index) {
  if (index != _selectedIndex) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PhasesPage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CdcPage()),
      );
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: SvgPicture.asset(
                'assets/images/polymazetol.svg',
                width: 200,
                height: 250,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: SvgPicture.asset(
                'assets/images/execlam.svg',
                width: 50,
                height: 50,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Text(
                'J u r r i e s   A p p',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Gelroy',
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(254, 87, 4, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'v2025.0.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gelroy',
                  ),
                ),
              ),
            ),
          ),

          // Barre de navigation en bas, importée de nav.dart
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavBar(
              currentIndex: _selectedIndex,
              onTap: _onNavTap,
            ),
          ),
        ],
      ),
    );
  }
}
