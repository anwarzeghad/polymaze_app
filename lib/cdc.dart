import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'nav.dart';
import 'phases.dart'; 
import 'home.dart';

class CdcPage extends StatefulWidget {
  const CdcPage({super.key});

  @override
  State<CdcPage> createState() => _CdcPageState();
}

class _CdcPageState extends State<CdcPage> {
  int _selectedIndex = 2;

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
          Column(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset(
                'assets/images/polymazetol.svg',
                width: 50,
                height: 100,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5, // Réduit la hauteur à 50% de l'écran
                  child: const PDF().fromAsset(
                    'assets/book.pdf',
                  ),
                ),
              ),
            ],
          ),
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
