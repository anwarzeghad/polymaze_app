import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo Polymaze au centre
          Center(
          child: Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: SvgPicture.asset(
          'assets/images/polymazetol.svg',
          width: 200,
          height: 250,
        ),
      ),
    ),
          Center(
          child: Padding(
          padding: EdgeInsets.only(bottom: 500),
          child: SvgPicture.asset(
          'assets/images/execlam.svg',
          width: 50,
          height: 50,
        ),
      ),
    ),
            Center(
              child: Padding(
              padding: EdgeInsets.only(top: 180),
              child: Text(
              'J u r r i e s   A p p',
              style: TextStyle(
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
              padding: EdgeInsets.only(top: 250),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              decoration: BoxDecoration(
              color: Color.fromRGBO(254, 87, 4, 1),
              borderRadius: BorderRadius.circular(5),
              ),
            child: Text(
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
  
          // Les trois boutons en bas
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromRGBO(255, 239, 232, 1),
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/images/home.svg'),
                    iconSize: 50,
                    onPressed: () {
                      // Action pour le bouton home
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/phases.svg'),
                    iconSize: 50,
                    onPressed: () {
                      // Action pour le bouton phases
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/cdc.svg'),
                    iconSize: 50,
                    onPressed: () {
                      // Action pour le bouton cdc
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}