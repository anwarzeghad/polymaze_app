import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int)? onTap;
  final int currentIndex;

  const BottomNavBar({
    Key? key,
    this.onTap,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 239, 232, 1),
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              currentIndex == 0
                  ? 'assets/images/home2.svg'
                  : 'assets/images/home1.svg',
            ),
            iconSize: 50,
            onPressed: () => onTap?.call(0),
          ),
          IconButton(
            icon: SvgPicture.asset(
              currentIndex == 1
                  ? 'assets/images/phases2.svg'
                  : 'assets/images/phases1.svg',
            ),
            iconSize: 50,
            onPressed: () => onTap?.call(1),
          ),
          IconButton(
            icon: SvgPicture.asset(
              currentIndex == 2
                  ? 'assets/images/cdc2.svg'
                  : 'assets/images/cdc1.svg',
            ),
            iconSize: 50,
            onPressed: () => onTap?.call(2),
          ),
        ],
      ),
    );
  }
}
