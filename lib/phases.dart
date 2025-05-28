import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'nav.dart';
import 'home.dart';
import 'cdc.dart';

// Ces imports supposent que tu as créé ces fichiers/pages
import 'group.dart';
import 'check.dart';
import 'league.dart';
import 'semi.dart';
import 'grandfinal.dart';

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

  Widget svgButton(String asset, double top, double bottom, double left, double right, Widget targetPage) {
    return Positioned(
      top: top != 0 ? top : null,
      bottom: bottom != 0 ? bottom : null,
      left: left != 0 ? left : null,
      right: right != 0 ? right : null,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        },
        child: SvgPicture.asset(
          asset,
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo du haut
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

          // Boutons SVG positionnés
          svgButton('assets/images/check.svg', 200, 0, 20, 0, const CheckPage()),
          svgButton('assets/images/groupe.svg', 370, 0, 20, 0, const GroupPage()),
          svgButton('assets/images/league.svg', 200, 0, 0, 20, const LeaguePage()),
          svgButton('assets/images/semi.svg', 370, 0, 0, 20, const SemiPage()),
          svgButton('assets/images/grand.svg', 0, 110, 20, 0, const GrandFinalPage()),

          // Barre de navigation
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
