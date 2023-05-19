import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp()); // Conflict
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// Structure
// Core Values [ Assets / Colors ]
// Start from first screen
