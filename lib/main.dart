import 'package:flutter/material.dart';

import 'core/themes/themes.dart';
import 'features/features.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        canvasColor: ColorsHelper.primaryColor,
        primaryColor: ColorsHelper.primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}

//  TODO: [x] Structure
//  TODO: [x] Core Values [ Assets / Colors ]
//  TODO: [] Start from first screen
