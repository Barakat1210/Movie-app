

import 'package:flutter/material.dart';
import 'package:movies/cores/util/routes_manager.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesManager.splash,
      onGenerateRoute:RoutesManager.router,
    );
  }}