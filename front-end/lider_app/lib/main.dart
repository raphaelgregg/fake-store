import 'package:flutter/material.dart';
import 'package:lider_app/src/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lider Demo",
      home: HomePage(),
    );
  }
}
