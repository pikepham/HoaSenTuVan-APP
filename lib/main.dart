import 'package:flutter/material.dart';
import 'package:hoasentuvan/navigator.dart';

void main() => runApp(HoaSenTuVan());

class HoaSenTuVan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: NavigationPage(),
    );
  }
}
