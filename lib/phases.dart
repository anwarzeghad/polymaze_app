import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'nav.dart';
import 'home.dart'; 
import 'cdc.dart';// <--- IMPORT NECESSAIRE

class PhasesPage extends StatefulWidget {
  const PhasesPage({super.key});

  @override
  State<PhasesPage> createState() => _PhasesPageState();
}

class _PhasesPageState extends State<PhasesPage> {
  int _selectedIndex = 1;

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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child : Padding(
                padding: const EdgeInsets.only(right: 170),
              child: SvgPicture.asset(
                'assets/images/check.svg',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:40),
              child : Padding(
                padding: const EdgeInsets.only(right: 170),
              child: SvgPicture.asset(
                'assets/images/groupe.svg',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child : Padding(
                padding: const EdgeInsets.only(left: 170),
              child: SvgPicture.asset(
                'assets/images/league.svg',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
        Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child : Padding(
                padding: const EdgeInsets.only(left: 170),
              child: SvgPicture.asset(
                'assets/images/semi.svg',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
        Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 380),
              child : Padding(
                padding: const EdgeInsets.only(right: 170),
              child: SvgPicture.asset(
                'assets/images/grand.svg',
                width: 150,
                height: 150,
              ),
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
