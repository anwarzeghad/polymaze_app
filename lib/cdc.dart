import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'nav.dart';
import 'phases.dart'; 
import 'home.dart';// <--- IMPORT NECESSAIRE

class CdcPage extends StatefulWidget {
  const CdcPage({super.key});

  @override
  State<CdcPage> createState() => _HomePageState();
}

class _HomePageState extends State<CdcPage> {
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
               Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 600),
              child: SvgPicture.asset(
                'assets/images/polymazetol.svg',
                width: 50,
                height: 100,
              ),
            ),
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
