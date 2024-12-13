import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies/cores/util/assets_manager.dart';
import 'package:movies/cores/util/colors_manager.dart';
import 'package:movies/cores/util/routes_manager.dart';
import 'package:movies/config/app_styles.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManager.home);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Container(
      color: ColorsManager.backGround,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex:3 ,),
            Image.asset(AssetsManager.logo,width: 168,height: 187,),
            Spacer(flex: 1,),
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 213,
              child: Column(
                children: [
                  Image.asset(AssetsManager.routeImage,width: 128,height: 120,),
                  Text('Supervised by Barakat Adel',style: AppStyles.splashText,),
                ],
              ),
            ),
          ],
        ),
    )
      ],
    );
  }
}
