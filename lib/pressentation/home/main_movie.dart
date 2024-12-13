import 'package:flutter/material.dart';

import '../../cores/util/colors_manager.dart';

class MainMovie extends StatefulWidget {
   MainMovie({super.key});

  @override
  State<MainMovie> createState() => _MainMovieState();
}

class _MainMovieState extends State<MainMovie> {
bool isClick=false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 40,
      child: Container(
        color: ColorsManager.backGround,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/doraimage.png',
            ),
            Positioned(
              top: 90,
              left: 21,
              child: Stack(
                children: [
                  Image.asset('assets/images/dora2.png'),
                  InkWell(
                    onTap: () {
                      if (isClick) {
                        isClick = false;
                      } else {
                        isClick = true;
                      }
                      setState(() {});
                    },
                    child: Container(
                      width: 22,
                      height: 25,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(color: isClick?ColorsManager.yellow:ColorsManager.iconBg),
                      child: Icon(
                        isClick ? Icons.check : Icons.add,
                        size: 25,
                        color: ColorsManager.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 14,
              top: 200,
              left: 150,
              child: Column(
                children: [
                  Text(
                    'Dora and the lost city of gold',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorsManager.white),
                  ),
                  Text(
                    '2019  PG-13  2h 7m',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorsManager.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
