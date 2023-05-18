import 'package:flutter/material.dart';
import 'package:quotes_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    home: HomePage(),
  ));
}
