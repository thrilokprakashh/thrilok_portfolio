import 'package:flutter/material.dart';
import 'package:thrilok_portfolio/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'thrilok prakashan',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage());
  }
}