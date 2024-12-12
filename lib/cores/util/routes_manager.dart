import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/pressentation/home/home.dart';
import 'package:movies/pressentation/splash/splash.dart';

class RoutesManager{
  static const String splash='/splash';
  static const String home='/home';
  static Route<MaterialPageRoute>?router(RouteSettings settings){
    switch(settings.name){
      case home:
        {
          return MaterialPageRoute(builder: (context)=> Home());
        }
      case splash:
        {
          return MaterialPageRoute(builder: (context)=>Splash());
        }
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('404 - Page Not Found')),
          ),
        );
    }
  }
}